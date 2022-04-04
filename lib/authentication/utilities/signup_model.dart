
class SignUpModel {
    SignUpModel({
        this.mobileNo,
        this.code,
        this.firstName,
        this.lastName,
        this.middleName,
        this.name,
        this.martialStatus,
        this.createdByCustomer,
        this.dob,
        this.regdate,
        this.expirydate,
        this.icFinPp,
        this.aliasName,
        this.title,
        this.gender,
        this.placeOfBirth,
        this.dependents,
        this.permanentAddressLine1,
        this.permanentAddressLine2,
        this.permanentAddressCity,
        this.permanentAddressState,
        this.permanentAddressCountry,
        this.permanentAddressPostalCode,
        this.idCardPlaceOfIssue,
        this.qualification,
        this.designation,
        this.occupation,
        this.income,
        this.regNo,
        this.idType,
        this.idissuedDate,
        this.idexpiryDate,
        this.residenceStatus,
        this.nationality,
        this.contactNo1,
        this.contactNo2,
        this.faxNo,
        this.email,
        this.address1,
        this.address2,
        this.city,
        this.state,
        this.postal,
        this.maritalStatus,
        this.createdBy,
        this.updatedBy,
        this.updatedDate,
        this.deletedBy,
        this.deletedDate,
        this.id,
        this.customerType,
        this.kycApproval,
        this.residenceType,
        this.status,
        this.createdDate,
        this.kycToken,
    });

    String? mobileNo;
    String? code;
    String? firstName;
    String? lastName;
    String? middleName;
    String? name;
    String? martialStatus;
    bool? createdByCustomer;
    dynamic dob;
    dynamic regdate;
    dynamic expirydate;
    dynamic icFinPp;
    dynamic aliasName;
    dynamic title;
    dynamic gender;
    dynamic placeOfBirth;
    dynamic dependents;
    dynamic permanentAddressLine1;
    dynamic permanentAddressLine2;
    dynamic permanentAddressCity;
    dynamic permanentAddressState;
    dynamic permanentAddressCountry;
    dynamic permanentAddressPostalCode;
    dynamic idCardPlaceOfIssue;
    dynamic qualification;
    dynamic designation;
    dynamic occupation;
    dynamic income;
    dynamic regNo;
    dynamic idType;
    dynamic idissuedDate;
    dynamic idexpiryDate;
    dynamic residenceStatus;
    dynamic nationality;
    dynamic contactNo1;
    dynamic contactNo2;
    dynamic faxNo;
    dynamic email;
    dynamic address1;
    dynamic address2;
    dynamic city;
    dynamic state;
    dynamic postal;
    dynamic maritalStatus;
    dynamic createdBy;
    dynamic updatedBy;
    DateTime? updatedDate;
    dynamic deletedBy;
    dynamic deletedDate;
    int? id;
    String? customerType;
    int? kycApproval;
    String? residenceType;
    int? status;
    DateTime? createdDate;
    String? kycToken;

    factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
        mobileNo: json["mobileNo"],
        code: json["code"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        middleName: json["middleName"],
        name: json["name"],
        martialStatus: json["martialStatus"],
        createdByCustomer: json["createdByCustomer"],
        dob: json["dob"],
        regdate: json["regdate"],
        expirydate: json["expirydate"],
        icFinPp: json["icFinPP"],
        aliasName: json["aliasName"],
        title: json["title"],
        gender: json["gender"],
        placeOfBirth: json["placeOfBirth"],
        dependents: json["dependents"],
        permanentAddressLine1: json["permanentAddressLine1"],
        permanentAddressLine2: json["permanentAddressLine2"],
        permanentAddressCity: json["permanentAddressCity"],
        permanentAddressState: json["permanentAddressState"],
        permanentAddressCountry: json["permanentAddressCountry"],
        permanentAddressPostalCode: json["permanentAddressPostalCode"],
        idCardPlaceOfIssue: json["idCardPlaceOfIssue"],
        qualification: json["qualification"],
        designation: json["designation"],
        occupation: json["occupation"],
        income: json["income"],
        regNo: json["regNo"],
        idType: json["idType"],
        idissuedDate: json["idissuedDate"],
        idexpiryDate: json["idexpiryDate"],
        residenceStatus: json["residenceStatus"],
        nationality: json["nationality"],
        contactNo1: json["contactNo1"],
        contactNo2: json["contactNo2"],
        faxNo: json["faxNo"],
        email: json["email"],
        address1: json["address1"],
        address2: json["address2"],
        city: json["city"],
        state: json["state"],
        postal: json["postal"],
        maritalStatus: json["maritalStatus"],
        createdBy: json["createdBy"],
        updatedBy: json["updatedBy"],
        updatedDate: DateTime.parse(json["updatedDate"]),
        deletedBy: json["deletedBy"],
        deletedDate: json["deletedDate"],
        id: json["id"],
        customerType: json["customerType"],
        kycApproval: json["kycApproval"],
        residenceType: json["residenceType"],
        status: json["status"],
        createdDate: DateTime.parse(json["createdDate"]),
        kycToken: json["kycToken"],
    );

    Map<String, dynamic> toJson() => {
        "mobileNo": mobileNo,
        "code": code,
        "firstName": firstName,
        "lastName": lastName,
        "middleName": middleName,
        "name": name,
        "martialStatus": martialStatus,
        "createdByCustomer": createdByCustomer,
        "dob": dob,
        "regdate": regdate,
        "expirydate": expirydate,
        "icFinPP": icFinPp,
        "aliasName": aliasName,
        "title": title,
        "gender": gender,
        "placeOfBirth": placeOfBirth,
        "dependents": dependents,
        "permanentAddressLine1": permanentAddressLine1,
        "permanentAddressLine2": permanentAddressLine2,
        "permanentAddressCity": permanentAddressCity,
        "permanentAddressState": permanentAddressState,
        "permanentAddressCountry": permanentAddressCountry,
        "permanentAddressPostalCode": permanentAddressPostalCode,
        "idCardPlaceOfIssue": idCardPlaceOfIssue,
        "qualification": qualification,
        "designation": designation,
        "occupation": occupation,
        "income": income,
        "regNo": regNo,
        "idType": idType,
        "idissuedDate": idissuedDate,
        "idexpiryDate": idexpiryDate,
        "residenceStatus": residenceStatus,
        "nationality": nationality,
        "contactNo1": contactNo1,
        "contactNo2": contactNo2,
        "faxNo": faxNo,
        "email": email,
        "address1": address1,
        "address2": address2,
        "city": city,
        "state": state,
        "postal": postal,
        "maritalStatus": maritalStatus,
        "createdBy": createdBy,
        "updatedBy": updatedBy,
        "updatedDate": updatedDate!.toIso8601String(),
        "deletedBy": deletedBy,
        "deletedDate": deletedDate,
        "id": id,
        "customerType": customerType,
        "kycApproval": kycApproval,
        "residenceType": residenceType,
        "status": status,
        "createdDate": createdDate!.toIso8601String(),
        "kycToken": kycToken,
    };
}
