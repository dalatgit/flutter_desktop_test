# Aplicación desktop hecha en Flutter para probar su accesibilidad
Aplicación desktop de ejemplo de Flutter compilada y probada en Windows para verificar su accesibilidad con el lector de pantalla NVDA. Este repositorio contiene el código fuente. Si desea puede [descargar una versión ya compilada](https://drive.google.com/drive/folders/1v_kwMdTo3cN7WCVogTa-o6_2Darierfu?usp=sharing) para probar, el nombre del ejecutable es mydesk1.exe

Comprobado que la accesibilidad funciona en Windows 10 con lector de pantalla NVDA. Las etiquetas y textos del programa de ejemplo están en idioma inglés.

A continuación la explicación de por qué se realizó este experimento.

## Flutter como herramienta para crear aplicaciones accesibles de escritorio

Recientemente (Febrero 2022) se anunció la [nueva versión de Flutter](https://developers.googleblog.com/2022/02/announcing-flutter-for-windows.html) que incluye dentro de sus novedades un mejor soporte de accesibilidad en el sistema operativo Windows. Para comprobarlo instalé las librerías de desarrollo de Flutter y realicé un pequeño programa que consta de solamente una ventana que contiene un botón, una caja de ingreso de datos y un texto que muestra el valor de un contador (que empieza en cero) y un botón para incrementar el valor del contador. Al presionar el botón la lógica interna de la aplicación incrementa el valor del contador y envía el nuevo valor al lector de pantalla para que sea anunciado por audio. Los controles y la ventana, al recorrerlos con el tabulador son anunciados por el lector de pantalla. Es decir cumple con la accesibilidad básica esperada.

Con esto puedo entonces recomendar utilizar Flutter para empezar a realizar aplicaciones de escritorio que necesiten accesibilidad. Todavía no es momento de descartar totalmente cualquier herramienta de desarrollo que utilice pero si podría servir para aplicaciones aisladas o de menor alcance. Es importante mencionar además por qué es importante utilizar Flutter frente a otras alternativas:

**Ventajas**

- Flutter permite crear aplicaciones accesibles para dispositivos móviles, y ahora con esta actualización nos pemite también hacerlo para escritorio. Esto representa una reutilización de conocimiento y código importante si queremos ampliar nuestra oferta de productos y servicios digitales. Flutter permite también crear apliaciones web pero en ese ámbito los frameworks de desarrollo basados en javascript y html todavía representan una mejor opción por su madurez. Pero no olvidemos que Flutter recibe el apoyo de Google quien está mejorándolo constantemente así que pronto podría también mejorar en ese ámbito.
- Es común que otras herramientas de desarrollo (sean para escritorio o para mobile) requieran la instalación de editores de código especializados o una lista de paquetes auxiliares que toman tiempo o son complejas de comprender o utilizar o tienen problemas de accesibilidad. Flutter sin embargo tiene los pasos de instalación claramente especificados en su [guía de inicio para el programador de Flutter](https://docs.flutter.dev/get-started/install) y se puede utilizar con cualquier editor de texto, esto no solamente facilita su uso sino que permite también que la forma de programar sea accesible.
- La aplicación de escritorio solamente ocupa unos pocos megabytes de espacio, lo cual representa una ventaja frente a aplicaciones de escritorio hechas con herramientas como Electron que suelen ocupar cientos de megabytes. Con esto se reduce el consumo de espacio y de memoria y se agiliza el tiempo de ejecución de la aplicación.

**Lo que falta mejorar todavía**

- El [documento de accesibilidad de Flutter](https://docs.flutter.dev/development/accessibility-and-localization/accessibility) necesita mayores detalles y claridad al momento de indicar como utilizarlo para crear aplicaciones accesibles. Afortunadamente como ya comprobé si es posible y además debido a la inmensa popularidad de Flutter existen abundantes tutoriales creados por terceros en la Internet.

Los invito a conocer Flutter, una alternativa cada vez más interesante para crear aplicaciones accesibles para plataformas móviles y de escritorio.

Se encuentra disponible el [Código fuente de la aplicación de escritorio de ejemplo](https://github.com/dalatgit/flutter_desktop_test) en github así como una versión compilada que basta con descargar y usar.

Henry Tong
taksantong@gmail.com