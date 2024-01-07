class Point {
  int x, y;

  Point(this.x, this.y);

  // Metode operator +
  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }
}

void main() {
  Point p1 = Point(1, 2);
  Point p2 = Point(2, 3);

  Point result = p1 + p2;
  print('Result: ${result.x}, ${result.y}'); // Output: Result: 3, 5
}
