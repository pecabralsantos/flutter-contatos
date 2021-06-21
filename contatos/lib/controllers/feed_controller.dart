import 'package:contatos/service/api_service.dart';
import 'package:contatos/service/model/contact_dto.dart';
import 'package:contatos/utils/service_status.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'feed_controller.g.dart';

class FeedController = FeedControllerBase with _$FeedController;

abstract class FeedControllerBase with Store {
  ApiService _apiService = GetIt.I.get<ApiService>();

  @observable
  ServiceStatus serviceStatus = ServiceStatus.WAITING;

  @observable
  ObservableList<ContactDTO> contactList = ObservableList();

  @action
  void getListContacts({Function()? success, Function(String msg)? error}) {
    serviceStatus = ServiceStatus.WAITING;
    _apiService.getListContacts().then((contacts) {
      contactList.clear();
      contactList.addAll(contacts.asObservable());
      serviceStatus = ServiceStatus.DONE;
      success?.call();
    }).catchError((onError) {
      serviceStatus = ServiceStatus.ERROR;
      error?.call(onError);
    });
  }
}
