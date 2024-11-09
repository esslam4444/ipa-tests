

 import 'dart:convert';

import 'specimen_model.dart';

class Specimen {
  int? id;
  String? labQr;
  double? total;
  String? notes;
  String? createdBy;
  dynamic createdDate;
  dynamic receivingDate;
  dynamic samplingDate;
  dynamic reportDate;
  dynamic contractType;
  String? lastModifiedBy;
  String? lastModifiedDate;
  String? specimenStatus;
  double? notPaid;
  double? paid;
  double? price;
  String? results;
  ReferringDoctor? referringDoctor;
  ReferringCenter? referringCenter;
  Patient? patient;
  SpecimenType? specimenType;
  Size? size;
  Organ? organ;
  Biopsy? biopsy;
  Cytology? cytology;
  bool? isWithdrawn;



  //constructor فاضي
      Specimen();


  Specimen.fromJson(Map<String, dynamic> json) {
    createdBy = json['createdBy'] ?? '';
    createdDate = json['createdDate'] ?? '';
    contractType = json['contractType'] ?? '';
    receivingDate = json['receivingDate'] ?? '';
    samplingDate = json['samplingDate'] ?? '';
    reportDate = json['reportDate'] ?? '';
    lastModifiedBy = json['lastModifiedBy'] ?? '';
    lastModifiedDate = json['lastModifiedDate'] ?? '';
    id = json['id'] ?? null;
    total = json['total'] ?? 0.0;
    notes = json['notes'] ?? '';
    labQr = json['labQr'] ?? '';
    specimenStatus = json['specimenStatus'] ?? '';
    // as a jason object belongs to its seperate model Patient
    notPaid = json['notPaid'] ?? 0.0;
    paid = json['paid'] ?? 0.0;
    price = json['price'] ?? 0.0;
    results = json['results'] ?? '';
    patient = json['patient'] != null ? Patient.fromJson(json['patient']) : null;
    specimenType = json['specimenType'] != null ? SpecimenType.fromJson(json['specimenType']) : null;
    size = json['size'] != null ? Size.fromJson(json['size']) : null;
    organ = json['organ'] != null ? Organ.fromJson(json['organ']) : null;
    biopsy = json['biopsy'] != null ? Biopsy.fromJson(json['biopsy']) : null;
    cytology = json['cytology'] != null ? Cytology.fromJson(json['cytology']) : null;
    referringDoctor = json['referringDoctor'] != null ? ReferringDoctor.fromJson(json['referringDoctor']) : null;
    referringCenter = json['referringCenter'] != null ? ReferringCenter.fromJson(json['referringCenter']) : null;
    isWithdrawn = json['isWithdrawn'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdBy'] = this.createdBy;
    data['createdDate'] = this.createdDate;
    data['contractType'] = this.contractType;
    data['receivingDate'] = this.receivingDate;
    data['samplingDate'] = this.samplingDate;
    data['reportDate'] = this.reportDate;
    data['lastModifiedBy'] = this.lastModifiedBy;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['id'] = this.id;
    data['total'] = this.total;
    data['notes'] = this.notes;
    data['labQr'] = this.labQr;
    data['notPaid'] = this.notPaid;
    data['paid'] = this.paid;
    data['price'] = this.price;
    data['results'] = this.results;
    data['specimenStatus'] = this.specimenStatus;
    data['patient'] = this.patient;
    data['specimenType'] = this.specimenType;
    data['size'] = this.size;
    data['organ'] = this.organ;
    data['biopsy'] = this.biopsy;
    data['cytology'] = this.cytology;
    data['referringDoctor'] = this.referringDoctor;
    data['referringCenter'] = this.referringCenter;
    data['isWithdrawn'] = this.isWithdrawn;
    return data;
  }

}


class Patient {
  int? id;
  String? nameAr;

  //constructor فاضي
  Patient();


  Patient.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? null;
    nameAr = json['nameAr'] ?? '';

  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nameAr'] = this.nameAr;
    data['id'] = this.id;

    return data;
  }

}


 class ReferringDoctor {
   String? name;
   String? nameAr;

   //constructor فاضي
   ReferringDoctor();


   ReferringDoctor.fromJson(Map<String, dynamic> json) {

     name = json['name'] ?? '';
     nameAr = json['nameAr'] ?? '';
   }

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = new Map<String, dynamic>();
     data['name'] = this.name;
     data['nameAr'] = this.nameAr;

     return data;
   }

 }



 class ReferringCenter {
   String? name;
   String? nameAr;

   //constructor فاضي
   ReferringCenter();


   ReferringCenter.fromJson(Map<String, dynamic> json) {

     name = json['name'] ?? '';
     nameAr = json['nameAr'] ?? '';
   }

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = new Map<String, dynamic>();
     data['name'] = this.name;
     data['nameAr'] = this.nameAr;

     return data;
   }

 }

 class SpecimenType {
   String? name;

   //constructor فاضي
   SpecimenType();


   SpecimenType.fromJson(Map<String, dynamic> json) {

     name = json['name'] ?? '';

   }

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = new Map<String, dynamic>();
     data['name'] = this.name;

     return data;
   }

 }


 class Size {
   String? name;

   //constructor فاضي
   Size();


   Size.fromJson(Map<String, dynamic> json) {

     name = json['name'] ?? '';

   }

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = new Map<String, dynamic>();
     data['name'] = this.name;

     return data;
   }

 }

 class Organ {
   String? name;

   //constructor فاضي
   Organ();


   Organ.fromJson(Map<String, dynamic> json) {

     name = json['name'] ?? '';

   }

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = new Map<String, dynamic>();
     data['name'] = this.name;

     return data;
   }

 }

 class Biopsy {
   String? name;

   //constructor فاضي
   Biopsy();


   Biopsy.fromJson(Map<String, dynamic> json) {

     name = json['name'] ?? '';

   }

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = new Map<String, dynamic>();
     data['name'] = this.name;

     return data;
   }

 }

 class Cytology {
   String? name;

   //constructor فاضي
   Cytology();


   Cytology.fromJson(Map<String, dynamic> json) {

     name = json['name'] ?? '';

   }

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = new Map<String, dynamic>();
     data['name'] = this.name;

     return data;
   }

 }