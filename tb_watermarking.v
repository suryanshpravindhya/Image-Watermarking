`timescale 1ns/1ps

module watermark_tb;

    parameter IMAGE_WIDTH  = 256;
    parameter IMAGE_HEIGHT = 256;
    parameter IMAGE_SIZE   = IMAGE_WIDTH * IMAGE_HEIGHT;  
    parameter PERIOD       = 10;                          

    reg        clk;
    reg        rst;
    reg  [7:0] pixel_in;     
    reg  [7:0] w_pixel_in;   
    reg        valid_in;

    wire [7:0] pixel_out;    
    wire       valid_out;

    integer base_file;       
    integer watermark_file;   
    integer output_file;      
    integer rd_base;          
    integer rd_wm;            
    integer i;
    integer out_pixel_count;

    watermarking_system uut (
        .clk                    (clk),
        .rst                    (rst),
        .pixel_in               (pixel_in),
        .w_pixel_in             (w_pixel_in),
        .valid_in               (valid_in),
        .watermarked_pixel_out  (pixel_out),
        .valid_out              (valid_out)
    );

    initial clk = 0;
    always #(PERIOD / 2) clk = ~clk;

    initial begin
        rst       = 1;
        valid_in  = 0;
        pixel_in  = 8'h00;
        w_pixel_in = 8'h00;
        out_pixel_count = 0;

        base_file      = $fopen("/Users/suryanshpravindhya/Downloads/project/base_image.hex","r");
	watermark_file = $fopen("/Users/suryanshpravindhya/Downloads/project/image.hex", "r");
	output_file    = $fopen("/Users/suryanshpravindhya/Downloads/project/watermarked_output.hex", "w");

        if (base_file == 0) begin
            $display("ERROR: Could not open 'base_image.hex'. Check the file path.");
            $finish;
        end
        if (watermark_file == 0) begin
            $display("ERROR: Could not open 'watermark_image.hex'. Check the file path.");
            $finish;
        end
        if (output_file == 0) begin
            $display("ERROR: Could not create 'watermarked_output.hex'.");
            $finish;
        end

        $display("------------------------------------------------------");
        $display(" Watermarking Simulation");
        $display("   Base image     : base_image.hex");
        $display("   Watermark image: watermark_image.hex");
        $display("   Image size     : %0d x %0d = %0d pixels",
                 IMAGE_WIDTH, IMAGE_HEIGHT, IMAGE_SIZE);
        $display("------------------------------------------------------");

        // -- Apply reset --
        #(PERIOD * 5);
        @(negedge clk);   
        rst = 0;
        #(PERIOD);

        $display("[%0t ns] Reset released. Starting pixel feed...", $time);

        for (i = 0; i < IMAGE_SIZE; i = i + 1) begin
            if (!$feof(base_file) && !$feof(watermark_file)) begin
                rd_base = $fscanf(base_file,      "%h\n", pixel_in);
                rd_wm   = $fscanf(watermark_file, "%h\n", w_pixel_in);

                if (rd_base != 1) begin
                    $display("WARNING: Short read from base_image.hex at pixel %0d", i);
                end
                if (rd_wm != 1) begin
                    $display("WARNING: Short read from watermark_image.hex at pixel %0d", i);
                end

                valid_in = 1;
                #(PERIOD);
            end else begin
                $display("WARNING: Reached EOF before processing all %0d pixels (at i=%0d).",
                         IMAGE_SIZE, i);
                i = IMAGE_SIZE; // Break loop
            end
        end

        valid_in  = 0;
        pixel_in  = 8'h00;
        w_pixel_in = 8'h00;
        $display("[%0t ns] All pixels fed. Flushing pipeline...", $time);

        #(PERIOD * 20);

        $display("[%0t ns] Done. %0d output pixels written to 'watermarked_output.hex'.",
                 $time, out_pixel_count);
        $display("------------------------------------------------------");

        $fclose(base_file);
        $fclose(watermark_file);
        $fclose(output_file);
        $finish;
    end

    always @(posedge clk) begin
        if (valid_out) begin
            $fwrite(output_file, "%02h\n", pixel_out);
            out_pixel_count = out_pixel_count + 1;

            if (out_pixel_count % (IMAGE_SIZE / 10) == 0) begin
                $display("[%0t ns] Progress: %0d / %0d output pixels written.",
                         $time, out_pixel_count, IMAGE_SIZE);
            end
        end
    end
initial begin
    $dumpfile("waves.vcd");
    $dumpvars(0, watermark_tb);
end
endmodule
