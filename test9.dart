extension type E(int i) {
  E.n(this.i);
  E.m(int j, String foo) : i = j + foo.length;
}

void main() {
  E(4); 
  E.n(3); 
  E.m(5, "Hello!"); 
}