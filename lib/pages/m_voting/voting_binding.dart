import '../m_voting/voting_controller.dart';
import 'package:get/get.dart';

class AccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VotingController>(() => VotingController());
  }
}
