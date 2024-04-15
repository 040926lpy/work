class Point {
  double? x; 
  double? y; 
}

void main() {
  var point = Point();
  point.x = 4; 
  assert(point.x == 4); 
  assert(point.y == null); 
}