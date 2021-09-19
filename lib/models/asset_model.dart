import 'dart:convert';

class AssetModel {
  final String name;
  final String cover;
  final String pdf;
  AssetModel({
    required this.name,
    required this.cover,
    required this.pdf,
  });

  AssetModel copyWith({
    String? name,
    String? cover,
    String? pdf,
  }) {
    return AssetModel(
      name: name ?? this.name,
      cover: cover ?? this.cover,
      pdf: pdf ?? this.pdf,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'cover': cover,
      'pdf': pdf,
    };
  }

  factory AssetModel.fromMap(Map<String, dynamic> map) {
    return AssetModel(
      name: map['name'],
      cover: map['cover'],
      pdf: map['pdf'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AssetModel.fromJson(String source) => AssetModel.fromMap(json.decode(source));

  @override
  String toString() => 'AssetModel(name: $name, cover: $cover, pdf: $pdf)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AssetModel &&
      other.name == name &&
      other.cover == cover &&
      other.pdf == pdf;
  }

  @override
  int get hashCode => name.hashCode ^ cover.hashCode ^ pdf.hashCode;
}
