import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "subscription" field.
  String? _subscription;
  String get subscription => _subscription ?? '';
  bool hasSubscription() => _subscription != null;

  // "sponsor" field.
  int? _sponsor;
  int get sponsor => _sponsor ?? 0;
  bool hasSponsor() => _sponsor != null;

  // "subscribers" field.
  int? _subscribers;
  int get subscribers => _subscribers ?? 0;
  bool hasSubscribers() => _subscribers != null;

  // "activation_code" field.
  String? _activationCode;
  String get activationCode => _activationCode ?? '';
  bool hasActivationCode() => _activationCode != null;

  // "tokens" field.
  int? _tokens;
  int get tokens => _tokens ?? 0;
  bool hasTokens() => _tokens != null;

  // "forSellTLM" field.
  int? _forSellTLM;
  int get forSellTLM => _forSellTLM ?? 0;
  bool hasForSellTLM() => _forSellTLM != null;

  // "payment_type" field.
  String? _paymentType;
  String get paymentType => _paymentType ?? '';
  bool hasPaymentType() => _paymentType != null;

  // "total_tlm" field.
  int? _totalTlm;
  int get totalTlm => _totalTlm ?? 0;
  bool hasTotalTlm() => _totalTlm != null;

  // "tlm_balance" field.
  int? _tlmBalance;
  int get tlmBalance => _tlmBalance ?? 0;
  bool hasTlmBalance() => _tlmBalance != null;

  // "dr_income" field.
  int? _drIncome;
  int get drIncome => _drIncome ?? 0;
  bool hasDrIncome() => _drIncome != null;

  // "subscription_status" field.
  String? _subscriptionStatus;
  String get subscriptionStatus => _subscriptionStatus ?? '';
  bool hasSubscriptionStatus() => _subscriptionStatus != null;

  // "refferalID" field.
  String? _refferalID;
  String get refferalID => _refferalID ?? '';
  bool hasRefferalID() => _refferalID != null;

  // "refferralCode" field.
  int? _refferralCode;
  int get refferralCode => _refferralCode ?? 0;
  bool hasRefferralCode() => _refferralCode != null;

  // "daystarted" field.
  int? _daystarted;
  int get daystarted => _daystarted ?? 0;
  bool hasDaystarted() => _daystarted != null;

  // "city" field.
  LatLng? _city;
  LatLng? get city => _city;
  bool hasCity() => _city != null;

  // "team_name" field.
  String? _teamName;
  String get teamName => _teamName ?? '';
  bool hasTeamName() => _teamName != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _subscription = snapshotData['subscription'] as String?;
    _sponsor = castToType<int>(snapshotData['sponsor']);
    _subscribers = castToType<int>(snapshotData['subscribers']);
    _activationCode = snapshotData['activation_code'] as String?;
    _tokens = castToType<int>(snapshotData['tokens']);
    _forSellTLM = castToType<int>(snapshotData['forSellTLM']);
    _paymentType = snapshotData['payment_type'] as String?;
    _totalTlm = castToType<int>(snapshotData['total_tlm']);
    _tlmBalance = castToType<int>(snapshotData['tlm_balance']);
    _drIncome = castToType<int>(snapshotData['dr_income']);
    _subscriptionStatus = snapshotData['subscription_status'] as String?;
    _refferalID = snapshotData['refferalID'] as String?;
    _refferralCode = castToType<int>(snapshotData['refferralCode']);
    _daystarted = castToType<int>(snapshotData['daystarted']);
    _city = snapshotData['city'] as LatLng?;
    _teamName = snapshotData['team_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? subscription,
  int? sponsor,
  int? subscribers,
  String? activationCode,
  int? tokens,
  int? forSellTLM,
  String? paymentType,
  int? totalTlm,
  int? tlmBalance,
  int? drIncome,
  String? subscriptionStatus,
  String? refferalID,
  int? refferralCode,
  int? daystarted,
  LatLng? city,
  String? teamName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'subscription': subscription,
      'sponsor': sponsor,
      'subscribers': subscribers,
      'activation_code': activationCode,
      'tokens': tokens,
      'forSellTLM': forSellTLM,
      'payment_type': paymentType,
      'total_tlm': totalTlm,
      'tlm_balance': tlmBalance,
      'dr_income': drIncome,
      'subscription_status': subscriptionStatus,
      'refferalID': refferalID,
      'refferralCode': refferralCode,
      'daystarted': daystarted,
      'city': city,
      'team_name': teamName,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.subscription == e2?.subscription &&
        e1?.sponsor == e2?.sponsor &&
        e1?.subscribers == e2?.subscribers &&
        e1?.activationCode == e2?.activationCode &&
        e1?.tokens == e2?.tokens &&
        e1?.forSellTLM == e2?.forSellTLM &&
        e1?.paymentType == e2?.paymentType &&
        e1?.totalTlm == e2?.totalTlm &&
        e1?.tlmBalance == e2?.tlmBalance &&
        e1?.drIncome == e2?.drIncome &&
        e1?.subscriptionStatus == e2?.subscriptionStatus &&
        e1?.refferalID == e2?.refferalID &&
        e1?.refferralCode == e2?.refferralCode &&
        e1?.daystarted == e2?.daystarted &&
        e1?.city == e2?.city &&
        e1?.teamName == e2?.teamName;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.subscription,
        e?.sponsor,
        e?.subscribers,
        e?.activationCode,
        e?.tokens,
        e?.forSellTLM,
        e?.paymentType,
        e?.totalTlm,
        e?.tlmBalance,
        e?.drIncome,
        e?.subscriptionStatus,
        e?.refferalID,
        e?.refferralCode,
        e?.daystarted,
        e?.city,
        e?.teamName
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
