import 'dart:io';

String readMock(String fileName) =>
    File("test/mock/$fileName").readAsStringSync();
