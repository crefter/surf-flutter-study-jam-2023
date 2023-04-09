class Ticket {
  final int id;
  final String name;
  final String url;
  final bool isLoaded;
  final String? path;

  Ticket(this.id, this.name, this.url, this.isLoaded, this.path);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Ticket &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          id == other.id &&
          url == other.url &&
          isLoaded == other.isLoaded;

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ url.hashCode ^ isLoaded.hashCode;

  Ticket copyWith({
    int? id,
    String? name,
    String? url,
    bool? isLoaded,
    String? path,
  }) {
    return Ticket(
      id ?? this.id,
      name ?? this.name,
      url ?? this.url,
      isLoaded ?? this.isLoaded,
      path ?? this.path,
    );
  }
}
