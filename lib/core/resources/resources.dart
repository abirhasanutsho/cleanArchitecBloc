
import 'dart:io';

abstract class DataState<T> {
  final T? data;
  final String? error;

  DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  DataFailed(String exception) : super(error: exception);
}