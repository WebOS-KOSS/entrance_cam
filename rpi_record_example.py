from picamera import PiCamera
from time import sleep
import os

camera = PiCamera()
#camera.rotation = 180

camera.start_preview()
camera.start_recording('/home/pi/Desktop/video.h264')
sleep(5)
camera.stop_recording()
camera.stop_preview()

if os.path.isfile("video.mp4"):
  os.remove("video.mp4")
  print("file removed!")
os.system("sh codec.sh")
