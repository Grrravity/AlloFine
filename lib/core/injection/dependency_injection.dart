import 'package:allofine/core/injection/clients_dep.dart';
import 'package:allofine/core/injection/datasource_dep.dart';
import 'package:allofine/core/injection/repository_dep.dart';
import 'package:allofine/core/injection/usecase_dep.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> initGetIt() async {
  await registerApiClients();
  await registerDataSources();
  await registerRepository();
  await registerUsecase();
  addDioInterceptor();
}
