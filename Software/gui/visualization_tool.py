import cv2

video = cv2.VideoCapture("road_video.mp4")

while True:

    ret, frame = video.read()

    if not ret:
        break

    cv2.imshow("ADAS Visualization", frame)

    if cv2.waitKey(25) & 0xFF == ord('q'):
        break

video.release()

cv2.destroyAllWindows()