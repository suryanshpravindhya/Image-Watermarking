from PIL import Image

img = Image.open("26.png").convert("L")
pixels = list(img.getdata())

with open("image.hex","w") as f:
    for p in pixels:
        f.write(format(p,'02x') + "\n")