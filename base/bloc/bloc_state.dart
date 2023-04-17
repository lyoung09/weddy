enum BlocStatus { none, initialized, success, error, loading, next, finalize }

extension BlocStatusX on BlocStatus {
  bool get isNone => this == BlocStatus.none;
  bool get isInitialized => this == BlocStatus.initialized;
  bool get isSuccess => this == BlocStatus.success;
  bool get isError => this == BlocStatus.error;
  bool get isLoading => this == BlocStatus.loading;
  bool get isNext => this == BlocStatus.next;
  bool get isFinalize => this == BlocStatus.finalize;
}
