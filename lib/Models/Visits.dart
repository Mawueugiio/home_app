import 'package:cloud_firestore/cloud_firestore.dart';

class Visits {
  // 1
  String visits;
  DateTime date1;
  DateTime date2;

  // 2
  DocumentReference reference;
  // 3
  Visits(this.visits, {this.date1, this.date2, this.reference});
  // 4
  factory  Visits.fromJson(Map<dynamic, dynamic> json) => _VisitsFromJson(json);
  // 5
  Map<String, dynamic> toJson() => _VisitsToJson(this);
  @override
  String toString() => "Visits<$visits>";
}
//1
Visits _VisitsFromJson(Map<dynamic, dynamic> json) {
  return Visits(
    json['vaccination'] as String,
    date1: json['date'] == null ? null : (json['date'] as Timestamp).toDate(),
    date2: json['date'] == null ? null : (json['date'] as Timestamp).toDate()
  );
}
//2
Map<String, dynamic> _VisitsToJson(Visits instance) =>
    <String, dynamic> {
      'visits': instance.visits,
      'date1': instance.date1,
      'date2': instance.date2,
    };

