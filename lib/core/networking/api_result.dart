sealed class ApiResult<T> {
  R fold<R>(R Function(T data) onSuccess, R Function(String failure) onFailure);
}

class Success<T> extends ApiResult<T> {
  final T data;

  Success(this.data);

  @override
  R fold<R>(R Function(T data) onSuccess, R Function(String failure) onFailure) {
    return onSuccess(data);
  }
}

class Failure<T> extends ApiResult<T> {
  final String failure;

  Failure(this.failure);

  @override
  R fold<R>(R Function(T data) onSuccess, R Function(String failure) onFailure) {
    return onFailure(failure);
  }
}
