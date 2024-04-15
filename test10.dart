extension type NumberE(int value) {
  NumberE operator +(NumberE other) =>
      NumberE(value + other.value);

  NumberE get next => NumberE(value + 1);
  bool isValid() => !value.isNegative;
}

void testE() { 
  var num1 = NumberE(1);
  
  num1.isValid(); // OK: Extension member invocation.
  
  var sum1 = num1 + num1; // OK: 'NumberE' defines '+'.
  var diff2 = num1.value - 2; // OK: Can access representation object with reference.
  
  List<NumberE> numbers = [
    NumberE(1), 
    num1.next, // OK: 'next' getter returns type 'NumberE'.
  ];
}

void main() {
  var n = NumberE(1);

  if (n is int) print(n.value); 

  if (n case int x) print(x.toRadixString(10)); 
  switch (n) {
    case int(:var isEven): print("$n (${isEven ? "even" : "odd"})"); 
  }

  int i = 2;
  if (i is NumberE) print("It is");
  if (i case NumberE v) print("value: ${v.value}");
  switch (i) {
    case NumberE(:var value): print("value: $value"); 
  }
}

