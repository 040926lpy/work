void main(){
  var list1 = [1, 2, 3];
  var list2 = [
  'Car',
  'Boat',
  'Plane',
];
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
var names = <String>{};
var elements1 = <String>{};
elements1.add('fluorine');
elements1.addAll(halogens);
var elements2 = <String>{};
elements2.add('fluorine');
elements2.addAll(halogens);
assert(elements2.length == 5);
final constantSet = const {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
  'astatine',
};
var gifts = {
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};
var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};
print(list2);
}