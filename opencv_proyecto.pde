//enfocar puntos luminosos

import gab.opencv.*;
import processing.video.*;
Capture video;

OpenCV opencv;

void setup() {
size(640, 480);
video = new Capture(this, 640, 480);
opencv = new OpenCV(this, 640, 480); 
video.start();
}

void draw() {
opencv.loadImage(video);
image(video, 0, 0); 
PVector loc = opencv.max();
filter(GRAY);
stroke(0, 255, 0);
strokeWeight(6);
noFill();
ellipse(loc.x, loc.y, 15, 15);
}
void captureEvent(Capture c) {
c.read();
}