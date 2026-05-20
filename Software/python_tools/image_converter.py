import cv2

# Read image
img = cv2.imread("road.jpg")

# Convert to grayscale
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

# Resize image
gray = cv2.resize(gray, (640, 480))

# Save grayscale image
cv2.imwrite("gray_output.jpg", gray)

# Generate pixel text file
with open("input_pixels.txt", "w") as file:

    for row in gray:

        for pixel in row:

            file.write(f"{pixel}\n")

print("Image conversion completed")