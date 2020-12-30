import 'helpers/hydrated_bloc.dart';

import 'config/config_test.dart' as config_test;
import 'modules/modules_test.dart' as modules_test;
import 'widgets/widgets_test.dart' as widgets_test;

void main() {
  initHydratedBloc();

  config_test.main();
  modules_test.main();
  widgets_test.main();
}
