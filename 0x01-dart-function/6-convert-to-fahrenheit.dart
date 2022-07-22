List<double> convertToF(List<double> temperaturesInC) {
  List<double> temp = [];
  for (int i = 0; i < temperaturesInC.length; i++) {
    var conv = temperaturesInC[i] * 9 / 5 + 32;
    temp.add(double.parse(conv.toStringAsFixed(2)));
  }
  return (temp);
}