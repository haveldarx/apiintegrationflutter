
import 'package:get/instance_manager.dart';


///Getx will create an instance of data and auth controllers,
///
/// as soon as the page will be removed from stack,
///Getx automatically removes the instance of both controller.

class GetXBindings extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => DataController());
    
  }
}
