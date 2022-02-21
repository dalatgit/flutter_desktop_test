# Desktop app made in Flutter to test its accessibility
Flutter desktop app coded and executed in Windows 10 to test how accessible it is with NVDA. The repository contains the source code and a [compiled version](https://drive.google.com/drive/folders/1v_kwMdTo3cN7WCVogTa-o6_2Darierfu?usp=sharing) can also be downloaded, the name of the executable is mydesk1.exe

Accessibility works fine. Next is an explanation of why this experiment was done.

## Using Flutter to create accessible desktop apps
Recently (February 2022) a [new version of Flutter was announced](https://developers.googleblog.com/2022/02/announcing-flutter-for-windows.html) that promised enhancements in the accessibility area for Windows Desktop apps. So to verify this, I installed Flutter and used a small sample desktop app that contains just a window, an input text, a label with a value of a counter, and a button that, when pressed, increments the value of the counter and I added one extra functionality: when the counter is incremented a message is sent to the screen reader to announce the value change. The basic accessibility worked ok using NVDA, so the test was successful.

I can start recommending now Flutter as a tool for building desktop apps. No need to discard your existing tools yet; but at least you can start to use Flutter for isolated apps or small apps until you get more confident with it.

Here are the advantages of Flutter over other tools:

**Advantages**

- With Flutter we can already create accessible mobile apps, now with this update we can also do accessible desktop apps. This means a great reuse of code. Flutter also allows us to create web apps, but in that area the usual html/js frameworks are still ahead in maturity. Do not forget Google is constantly improving Flutter so this may change soon.
- Usually other development tools require complex installations or force us to use tools that are complex to learn or lack good accessibility. But the [Flutter getting started guide](https://docs.flutter.dev/get-started/install) is easy to follow and one can get up and running in Flutter very quickly. We can use any text editor to work with Flutter so this also means it is easier to learn and it is accessible to program in Flutter.
- The Flutter desktop apps are compiled and use only a few megabytes in size. This means less memory and space used and faster execution compared to Electron apps.

**What needs to be improved**

- [Flutter's accessibility guide](https://docs.flutter.dev/development/accessibility-and-localization/accessibility) needs to be expanded and improved. Luckily Flutter is very popular so many tutorials are available in the Internet.
- While inside the input text field the screen reader says nothing if you navigate the text using the arrow keys. This has already been reported as an [accessibility issue](https://github.com/flutter/flutter/issues/95556) in their github.

**Conclusion**

So I invite you to use Flutter, a very interesting tool to make accessible mobile and desktop apps, that is constantly improving.

Here is the [source code of the example application](https://github.com/dalatgit/flutter_desktop_test). A compiled version is available also to just download an execute to test.

Henry Tong
taksantong@gmail.com
