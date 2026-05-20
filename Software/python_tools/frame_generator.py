import cv2
import os

video = cv2.VideoCapture(
    r"D:\VLSI\FPGA_ADAS_Vision_Accelerator\Software\python_tools\Car_Detecting_videos\Car_Detecting.mp4"
)



if not video.isOpened():
    print("Error opening video")
    exit()

output_folder = "frames"

os.makedirs(output_folder, exist_ok=True)

count = 0

while True:

    ret, frame = video.read()

    if not ret:
        print("End of video")
        break

    filename = f"{output_folder}/frame_{count:03d}.jpg"

    cv2.imwrite(filename, frame)

    print("Saved:", filename)

    count += 1

video.release()

print("Frames generated successfully")
print("Total frames:", count)
print(video)