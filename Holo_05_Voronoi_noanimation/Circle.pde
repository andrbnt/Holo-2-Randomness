// Processing triangulation
// Reference: https://www.youtube.com/watch?v=7VcuKj1_nHA
// http://geomalgorithms.com/a15-_tangents.html
// http://www.personal.kent.edu/~rmuhamma/Compgeometry/MyCG/ConvexHull/incrementCH.htm
// Daniel Shiffman
// May 2015
// https://github.com/shiffman/Holo-2-Randomness

// Class for a circle
class Circle {

  // Center
  Point center;
  // Radius
  float r;

  Circle(Point c, float r_) {
    center = c;
    r = r_;
  }

  // Draw circle
  void display() {
    display(1, 255, 255, 255);
  }

  void display(float wght, float rr, float gg, float bb) {
    strokeWeight(wght);
    stroke(rr, gg, bb, 175);
    fill(rr, gg, bb, 25);
    ellipse(center.x, center.y, r*2, r*2);
  }

  // Is a point inside?
  boolean contains(PVector v) {
    float d = center.dist(v);
    // Bad floating point math is causing problems?
    // Making sure it's not a point just sitting on the edge, we can get stuck flipping
    // forever, but this is quite bad to take off 0.1 here
    if (d < r) {
      return true;
    } else {
      return false;
    }
  }

  String toString() {
    return center.toString() + " " + r;
  } 
}