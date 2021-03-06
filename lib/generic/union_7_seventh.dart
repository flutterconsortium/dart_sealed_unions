import 'package:sealed_unions/union_7.dart';

class Union7Seventh<A, B, C, D, E, F, G> implements Union7<A, B, C, D, E, F, G> {
  final G _value;

  Union7Seventh(this._value);

  @override
  void continued(
    Function(A) continuationFirst,
    Function(B) continuationSecond,
    Function(C) continuationThird,
    Function(D) continuationFourth,
    Function(E) continuationFifth,
    Function(F) continuationSixth,
    Function(G) continuationSeventh,
  ) {
    continuationSeventh(_value);
  }

  @override
  R join<R>(
    R Function(A) mapFirst,
    R Function(B) mapSecond,
    R Function(C) mapThird,
    R Function(D) mapFourth,
    R Function(E) mapFifth,
    R Function(F) mapSixth,
    R Function(G) mapSeventh,
  ) {
    return mapSeventh(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Union7Seventh && runtimeType == other.runtimeType && _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
