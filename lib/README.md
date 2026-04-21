Uso del proyecto para descargas de Flutter Flow

En la carpeta flutter_flow se debería encontrar todo lo necesario para que funcione cualquier cosa copiada de Flutter Flow:
-> flutter_flow_theme.dart: se personaliza el tema, nombres de colores y tipografía
-> flutter_flow_widgets.dart: incluye las referencias a los widgets clonicos de FF que se encuentran en la carpeta FFwidgets. En caso de faltar alguno, se incluye en la carpeta y se referencia desde este archivo.
-> flutter_flow_util: incluye todo lo necesario para que pueda funcionar el entorno que prepara FF, es el import principal de cada clase.

En la carpeta pages se encuentran todas las pantallas copiadas y pegadas de FF, cada pantalla consta de un model y un widget que deben ser creados como archivos en esta carpeta, respetando la nomenclatura y copiando su código. Los nombres deben ser:
- nombre_de_la_pagina_model.dart
- nombre_de_la_pagina_widget.dart
Estos nombres se pueden observar en los imports/expors de la cabecera de cada página que genera FF.

METODO DE COPIA:
Los códigos fuente en FF comienzan por unos imports que deben ser cambiados:
No copiar: 
    import '/flutter_flow/flutter_flow_theme.dart';
    import '/flutter_flow/flutter_flow_util.dart';
    import '/flutter_flow/flutter_flow_widgets.dart';
Incluir:
    import '../flutter_flow/flutter_flow_util.dart';

El resto de imports se pueden dejar tal cual dado que index.dart ya se encuentra en la raíz del proyecto y sigue la nomenclatura.

Una vez añadidos en pages el model y el widget se debe configurar el navegador y el índice:
-> En index.dart: añadir el export a la página que se ha añadido, solo al '_widget.dart', ya que este ya incluye el import/export al modelo.
-> En nav.dart: se debe incluir la ruta de la página nueva para que funcionen las referencias en FF. Nótese que las propias páginas ya incluyen sus propios nombres y rutas y solo hace falta hacerles referencia.




// Falta arreglar el GoBack para que funcione correctamente