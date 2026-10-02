class ValidationRegex {
  static final RegExp email = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');

  static final RegExp password = RegExp(r'^.{6,}$');
}
