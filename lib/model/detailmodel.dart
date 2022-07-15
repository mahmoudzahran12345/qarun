class SectionDetailModel {
  int? sectionId;
  String? count;
  String? description;
  String? reference;
  String? zakr;

  SectionDetailModel(this.sectionId, this.count, this.description, this.zakr,
      this.reference);

  SectionDetailModel.fromJson(Map<String, dynamic> json) {
    count = json["count"];
    description = json["description"];
    reference = json["reference"];
    zakr = json["zekr"];
    sectionId = json["section_Id"];
  }
}