import numpy as np
from PIL import Image

def hex_to_image(hex_file, output_png, size=(256, 256)):
    try:
        with open(hex_file, 'r') as f:
            hex_data = f.readlines()
            # This line converts each hex string to a base-16 integer
            pixels = [int(line.strip(), 16) for line in hex_data if line.strip()]
        
        # Ensure we have enough data for a 256x256 image
        if len(pixels) < size[0]*size[1]:
            print(f"Warning: Only {len(pixels)} pixels found. Image might be incomplete.")
            # Pad with zeros if necessary
            pixels += [0] * (size[0]*size[1] - len(pixels))

        pixels = pixels[:size[0]*size[1]]
        img_array = np.array(pixels, dtype=np.uint8).reshape(size)
        img = Image.fromarray(img_array)
        img.save(output_png)
        print(f"Success! Saved reconstructed image to {output_png}")
        
    except Exception as e:
        print(f"Error: {e}")

# Call the function
hex_to_image('watermarked_output.hex', 'result.png')