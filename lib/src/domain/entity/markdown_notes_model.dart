class MarkdownNote {
  final String uid;
  final int? id;
  final String? type;
  final String title;
  final String data;
  final int createdAt;
  final int updatedAt;

  MarkdownNote({
    required this.uid,
    this.id,
    required this.type,
    required this.title,
    required this.data,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MarkdownNote.fromMap(Map<String, dynamic> map) {
    return MarkdownNote(
      uid: map['uid'],
      id: map['id'],
      type: map['type'],
      title: map['title'],
      data: map['data'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'id': id,
      'type': type,
      'title': title,
      'data': data,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  @override
  String toString() {
    return 'MarkdownNote(uid: $uid, id: $id, type: $type, title: $title, data: $data, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
