import 'package:contatos/service/api_service.dart';
import 'package:contatos/service/model/contact_dto.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'feed_controller.g.dart';

class FeedController = FeedControllerBase with _$FeedController;

abstract class FeedControllerBase with Store {
  ApiService _apiService = GetIt.I.get<ApiService>();

  @observable
  ObservableList<ContactDTO> contactList = ObservableList();

  @action
  Future<void> getListContacts() async {
    await _apiService.getListContacts().then((contacts) {
      contactList.clear();
      contactList.addAll(contacts.asObservable());
    }).catchError((onError) {
      return onError;
    });
  }
}
