from flask import Flask
from flask import render_template
from flask import Response

import numpy as np
import cv2

app = Flask(__name__)
cap = cv2.VideoCapture(0)
open_cv = cv2.CascadeClassifier(cv2.data.haarcascades +
    "haarcascade_frontalface_default.xml")

def generate():
    while (cap.isOpened()):
        ret,frame=cap.read()
        if ret:
            cv2.imshow('frame', frame)
            if cv2.waitKey(1) & 0xFF == ord("q"):
                break
        else:
            break

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/video_feed")
def video_feed():
    return Response(generate(),
        mimetype = "multipart/x-mixed-replace; boundary=frame")

if __name__ == "__main__":
    app.run(debug=False)

cap.release()
