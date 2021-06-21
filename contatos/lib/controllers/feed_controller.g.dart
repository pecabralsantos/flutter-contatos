// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedController on FeedControllerBase, Store {
  final _$serviceStatusAtom = Atom(name: 'FeedControllerBase.serviceStatus');

  @override
  ServiceStatus get serviceStatus {
    _$serviceStatusAtom.reportRead();
    return super.serviceStatus;
  }

  @override
  set serviceStatus(ServiceStatus value) {
    _$serviceStatusAtom.reportWrite(value, super.serviceStatus, () {
      super.serviceStatus = value;
    });
  }

  final _$contactListAtom = Atom(name: 'FeedControllerBase.contactList');

  @override
  ObservableList<ContactDTO> get contactList {
    _$contactListAtom.reportRead();
    return super.contactList;
  }

  @override
  set contactList(ObservableList<ContactDTO> value) {
    _$contactListAtom.reportWrite(value, super.contactList, () {
      super.contactList = value;
    });
  }

  final _$contactAtom = Atom(name: 'FeedControllerBase.contact');

  @override
  ContactDTO get contact {
    _$contactAtom.reportRead();
    return super.contact;
  }

  @override
  set contact(ContactDTO value) {
    _$contactAtom.reportWrite(value, super.contact, () {
      super.contact = value;
    });
  }

  final _$FeedControllerBaseActionController =
      ActionController(name: 'FeedControllerBase');

  @override
  void getListContacts(
      {dynamic Function()? success, dynamic Function(String)? error}) {
    final _$actionInfo = _$FeedControllerBaseActionController.startAction(
        name: 'FeedControllerBase.getListContacts');
    try {
      return super.getListContacts(success: success, error: error);
    } finally {
      _$FeedControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getContact(ContactDTO dto,
      {dynamic Function()? success, dynamic Function(String)? error}) {
    final _$actionInfo = _$FeedControllerBaseActionController.startAction(
        name: 'FeedControllerBase.getContact');
    try {
      return super.getContact(dto, success: success, error: error);
    } finally {
      _$FeedControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
serviceStatus: ${serviceStatus},
contactList: ${contactList},
contact: ${contact}
    ''';
  }
}
