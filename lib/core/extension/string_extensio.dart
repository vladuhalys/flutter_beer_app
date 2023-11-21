extension StringUtil on String? {
  bool get isNullOrEmpty => (this ?? '').isEmpty;
}
