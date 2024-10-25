class Failure {
  const Failure(this.message);

  const Failure.unknown() : message = '';

  final String message;

  @override
  String toString() => '\n$runtimeType\nmessage: $message\n';
}
