import 'package:dart_sealed_unions/functions/func_consumer.dart';
import 'package:dart_sealed_unions/functions/func_function.dart';
import 'package:dart_sealed_unions/union_5.dart';

class Union5Third<A, B, C, D, E> implements Union5<A, B, C, D, E> {

  final C _value;

  Union5Third(this._value);

  @override
  void continued(Consumer<A> continuationFirst, Consumer<B> continuationSecond,
      Consumer<C> continuationThird, Consumer<D> continuationFourth,
      Consumer<E> continuationFifth) {
    try {
      continuationThird(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  R join<R>(Func1<R, A> mapFirst, Func1<R, B> mapSecond, Func1<R, C> mapThird,
      Func1<R, D> mapFourth, Func1<R, E> mapFifth) {
    try {
      return mapThird(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union5Third &&
              runtimeType == other.runtimeType &&
              _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();

}