import cv2
import numpy as np

# Load parking image
image = cv2.imread("parking.jpg")

# Resize image
image = cv2.resize(image, (1280, 720))

# Convert to grayscale
gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

# Gaussian blur
blur = cv2.GaussianBlur(gray, (5,5), 0)

# Edge detection
edges = cv2.Canny(blur, 50, 150)

# Hough line transform
lines = cv2.HoughLinesP(
    edges,
    1,
    np.pi/180,
    threshold=50,
    minLineLength=50,
    maxLineGap=10
)

slot_count = 0

# Draw parking lines
if lines is not None:

    for line in lines:

        x1, y1, x2, y2 = line[0]

        cv2.line(
            image,
            (x1, y1),
            (x2, y2),
            (0,255,0),
            2
        )

        slot_count += 1

print("Parking lines detected:", slot_count)

# Display output
cv2.imshow("Parking Slot Detection", image)

cv2.waitKey(0)

cv2.destroyAllWindows()