extension StringExtensions on String {
  bool get isValidEmail {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(this);
  }
}

extension ListExtensions<T> on List<T> {
  List<T> get reversedList {
    return this.reversed.toList();
  }
}
