import 'helpers/hydrated_bloc.dart';
import 'modules/products/products_test.dart' as products_test;

void main() {
  initHydratedBloc();

  products_test.main();
}
