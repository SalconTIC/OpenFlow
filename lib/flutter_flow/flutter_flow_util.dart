// A medida que el código te pida una función (ej. wrapWithModel), la buscaremos en el visualizador de código de FF (en la sección de utilidades) y la pegaremos allí.


// ignore_for_file: unused_import

export 'flutter_flow_widgets.dart';
export 'flutter_flow_theme.dart';

export 'package:google_fonts/google_fonts.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';

abstract class FlutterFlowModel<TWidget extends Widget> {
  void initState(BuildContext context);
  void dispose();
  void maybeDispose() => dispose();
}

// La función que inicializa el modelo en el initState del Widget
T createModel<T extends FlutterFlowModel>(
  BuildContext context,
  T Function() modelGetter,
) {
  return modelGetter();
}

extension StateSafeSetState on State {
  void safeSetState(VoidCallback fn) {
    if (mounted) {
      // ignore: invalid_use_of_protected_member
      setState(fn);
    }
  }
}

extension IterableDivideExtension<T extends Widget> on Iterable<T> {
  List<Widget> divide(Widget separator) {
    if (isEmpty) return [];
    return Iterable<Widget>.generate(
      length * 2 - 1,
      (index) => index.isEven ? elementAt(index ~/ 2) : separator,
    ).toList();
  }

  List<Widget> addToStart(Widget widget) => [widget, ...this];
  List<Widget> addToEnd(Widget widget) => [...this, widget];
}





