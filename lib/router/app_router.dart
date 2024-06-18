import 'package:auto_route/auto_route.dart';
import 'package:note_auto_route/splash/presentation/splash_page.dart';
import '../item/presentation/item_detail_page.dart';
part 'app_router.gr.dart';


@AutoRouterConfig(replaceInRouteName: "Page,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: ItemDetailRoute.page, path: '/detail'),
  ];

}