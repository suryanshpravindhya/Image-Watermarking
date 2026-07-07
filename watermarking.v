module watermarking_system (
    input  wire        clk,
    input  wire        rst,
    input  wire [7:0]  pixel_in,       
    input  wire [7:0]  w_pixel_in,    
    input  wire        valid_in,
    output reg  [7:0]  watermarked_pixel_out,
    output reg         valid_out
);

    reg [7:0] prev_pixel;          
    reg [7:0] prev_w_pixel;        
    reg       pixel_pair_toggle;   

    reg [7:0] buffer_x2;           
    reg       pending_x2;          

    wire [8:0] s_row;              
    wire [8:0] d_row;              
    assign s_row = {1'b0, prev_pixel} + {1'b0, pixel_in};
    assign d_row = {1'b0, prev_pixel} - {1'b0, pixel_in};  

    wire [8:0] w_avg;
    assign w_avg = ({1'b0, prev_w_pixel} + {1'b0, w_pixel_in}) >> 1; 

    wire [9:0] s_watermarked_full;
    assign s_watermarked_full = {1'b0, s_row} + {1'b0, w_avg[8:2]};  

    wire [8:0] s_watermarked;
    assign s_watermarked = s_watermarked_full[9] ? 9'h1FF : s_watermarked_full[8:0];

    wire signed [9:0] s_signed;
    wire signed [9:0] d_signed;
    assign s_signed = {1'b0, s_watermarked};
    assign d_signed = {{1{d_row[8]}}, d_row};  

    wire signed [9:0] sum_sd;
    wire signed [9:0] dif_sd;
    assign sum_sd = s_signed + d_signed;
    assign dif_sd = s_signed - d_signed;

    wire [7:0] rec_x1, rec_x2;
    assign rec_x1 = (sum_sd[9]) ? 8'd0 :          
                    (sum_sd[9:1] > 9'd255) ? 8'd255 :
                    sum_sd[8:1];

    assign rec_x2 = (dif_sd[9]) ? 8'd0 :
                    (dif_sd[9:1] > 9'd255) ? 8'd255 :
                    dif_sd[8:1];

    always @(posedge clk) begin
        if (rst) begin
            pixel_pair_toggle        <= 0;
            valid_out                <= 0;
            watermarked_pixel_out    <= 0;
            prev_pixel               <= 0;
            prev_w_pixel             <= 0;
            buffer_x2                <= 0;
            pending_x2               <= 0;
        end else begin
           
            valid_out <= 0;

            if (pending_x2) begin
                watermarked_pixel_out <= buffer_x2;
                valid_out             <= 1;
                pending_x2            <= 0;
            end

            if (valid_in) begin
                if (pixel_pair_toggle == 0) begin
                    prev_pixel   <= pixel_in;
                    prev_w_pixel <= w_pixel_in;
                    pixel_pair_toggle <= 1;
                end else begin
                    watermarked_pixel_out <= rec_x1;
                    valid_out             <= 1;  

                    buffer_x2  <= rec_x2;
                    pending_x2 <= 1;

                    pixel_pair_toggle <= 0;
                end
            end
        end
    end

endmodule
