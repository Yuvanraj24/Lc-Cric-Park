import 'package:cloud_firestore/cloud_firestore.dart';

class BannerModel {
  String imageUrl;
  final bool active;

  BannerModel(
      {required this.imageUrl, required this.active});


  Map<String, dynamic> toJson() {
    return {
      "imageUrl": imageUrl,
      "active": active
    };
  }

  factory BannerModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return BannerModel(imageUrl: data["imageUrl"] ?? "",
        active: data["active"] ?? false);
  }
}