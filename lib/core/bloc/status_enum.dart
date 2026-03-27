enum Status { initial, loading, success, error }

class BaseStateEnum<T> {
  final Status status;
  final T? data;
  final String? message;

  BaseStateEnum({this.status = Status.initial, this.data, this.message});

  BaseStateEnum<T> copyWith({Status? status, T? data, String? message}) {
    return BaseStateEnum<T>(
      status: status ?? this.status,
      data: data ?? this.data,
      message: message ?? this.message,
    );
  }
}
