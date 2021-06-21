import 'package:contatos/components/cards.dart';
import 'package:contatos/controllers/feed_controller.dart';
import 'package:contatos/utils/service_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  FeedController _controller = GetIt.I.get<FeedController>();

  @override
  void initState() {
    _controller.getListContacts();
    super.initState();
  }

  void _onRefresh() {
    _controller.getListContacts(
      success: () => _refreshController.refreshCompleted(),
      error: (msg) => _refreshController.refreshFailed(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SmartRefresher(
        controller: _refreshController,
        header: MaterialClassicHeader(
          backgroundColor: Colors.blue,
          color: Colors.white,
        ),
        onRefresh: _onRefresh,
        child: Observer(
          builder: (_) {
            switch (_controller.serviceStatus) {
              case ServiceStatus.WAITING:
                return Center(child: CircularProgressIndicator());
              case ServiceStatus.DONE:
                return ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: _controller.contactList.length,
                  itemBuilder: (_, index) {
                    var contactList = _controller.contactList[index];
                    return Cards.feed(context, contactList);
                  },
                );
              case ServiceStatus.ERROR:
                return Container();
            }
          },
        ),
      ),
    );
  }
}
