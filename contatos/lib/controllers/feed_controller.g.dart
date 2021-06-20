// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedController on FeedControllerBase, Store {
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

  final _$getListContactsAsyncAction =
      AsyncAction('FeedControllerBase.getListContacts');

  @override
  Future<void> getListContacts() {
    return _$getListContactsAsyncAction.run(() => super.getListContacts());
  }

  @override
  String toString() {
    return '''
contactList: ${contactList}
    ''';
  }
}
