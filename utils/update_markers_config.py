
import os
import json_config
import cv2
import sys

sys.path.append(os.path.abspath("."))
sys.path.append(os.path.abspath(".."))

from segmentation.detect import ObjectDetector  # noqa: E402

CONFIG_FILE = "./config/pick_and_place_gui.json"

config = json_config.load(CONFIG_FILE)

frame = None

if config['static_image_mode']:
    frame = cv2.imread(config['static_image'])
else:
    cap = cv2.VideoCapture(config['camera_URL'])
    ret, frame = cap.read()
    cap.release()

    if not ret:
        frame = None

if frame is not None:
    markers = config['workarea']['plane_markers']
    detect = ObjectDetector()
    plane_markers, _, _ = detect.find_markers(frame, markers)
    config['workarea']['plane_markers'] = plane_markers

    print(plane_markers)
    if plane_markers:
        json_config.save(config, CONFIG_FILE)
