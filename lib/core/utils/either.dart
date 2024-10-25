abstract class Either<L, R> {
  const Either();

  T fold<T>(T Function(L l) leftFn, T Function(R r) rightFn);

  bool get isLeft;
  bool get isRight;

  L get left => isLeft ? (this as Left<L, R>).value : throw UnimplementedError();
  R get right => isRight ? (this as Right<L, R>).value : throw UnimplementedError();
}

class Left<L, R> extends Either<L, R> {
  const Left(this.value);

  final L value;

  @override
  T fold<T>(T Function(L l) leftFn, T Function(R r) rightFn) => leftFn(value);

  @override
  bool get isLeft => true;

  @override
  bool get isRight => false;
}

class Right<L, R> extends Either<L, R> {
  const Right(this.value);

  final R value;

  @override
  T fold<T>(T Function(L l) leftFn, T Function(R r) rightFn) => rightFn(value);

  @override
  bool get isLeft => false;

  @override
  bool get isRight => true;
}
