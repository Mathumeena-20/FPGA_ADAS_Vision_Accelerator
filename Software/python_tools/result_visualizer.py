import cv2

# Load images
input_img = cv2.imread("road.jpg")

edge_img = cv2.imread("edge_output.jpg")

# Display
cv2.imshow("Input Image", input_img)

cv2.imshow("Edge Output", edge_img)

cv2.waitKey(0)

cv2.destroyAllWindows()