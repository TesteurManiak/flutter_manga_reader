abstract class PaginatedResponse<T> {
  const PaginatedResponse({
    required this.data,
    required this.hasMore,
  });

  final List<T> data;
  final bool hasMore;
}
