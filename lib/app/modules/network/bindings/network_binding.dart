import 'package:bhattacharya/app/modules/network/controller/network_controller.dart';
import 'package:get/instance_manager.dart';

class NetworkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkController>(() => NetworkController());
  }
}
