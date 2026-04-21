/* nav.dart

En este archivo se definen las rutas de las que constará el proyecto
(a que páginas llamar cuando sea necesario resolver una ruta) y la 
definición de los métodos que lo hacen funcionar.
*/

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../index.dart';

final materialAppTitle = "Proyecto de descarga";

final goRouter = GoRouter(
  initialLocation: InicioWidget.routePath,
  debugLogDiagnostics: true, // Útil para ver en consola qué ruta se está abriendo
  routes: [
    GoRoute(
      name: InicioWidget.routeName, // Usamos la propiedad de la clase
      path: InicioWidget.routePath, 
      builder: (context, state) => const InicioWidget(),
    ),
    /* Cuando añadas otra página, solo copias esto:
    GoRoute(
      name: ClaseWidget.routeName,
      path: ClaseWidget.routePath,
      builder: (context, state) => const ClaseWidget(),
    ),
    */

    /* Posible variación del bulder cuando sea necesaria
       para pasar parámetros por constructor:
       builder: (context, state) => DetalleProductoWidget(
        // Si FF espera un parámetro llamado 'itemRef'
        itemRef: state.uri.queryParameters['itemRef'], 
        ),
    */
  ],
);

// Esta extensión permite que context.pushNamed siga funcionando
extension NavContextExtensions on BuildContext {
  void safePop() {
    if (canPop()) {
      pop();
    }
  }

  void pushNamed(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    goNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }
}
