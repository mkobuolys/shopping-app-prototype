import 'helpers/hydrated_bloc.dart';
import 'modules/products/products_test.dart' as products_test;
import 'widgets/widgets_test.dart' as widgets_test;

void main() {
  initHydratedBloc();

  products_test.main();
  widgets_test.main();
}
