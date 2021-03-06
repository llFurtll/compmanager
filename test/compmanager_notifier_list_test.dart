import 'package:flutter_test/flutter_test.dart';
import 'package:compmanager/core/compmanager_notifier_list.dart';
void main() {
  late List<String?> tests;
  late CompManagerNotifierList<String?> notifierList;

  setUp(() {
    tests = ["Test"];
    notifierList = CompManagerNotifierList(tests);
  });

  group("Tests in CompManagerNotifierList", () {
    test("Test get value CompManagerNotifierList", () {
      List<String?> response = List.from(notifierList.value);
      expect(notifierList.value, response);
    });

    test("Length", () {
      int response = notifierList.value.length;
      expect(notifierList.value.length, response);
    });

    test("notify", () {
      expect(() => notifierList.notifyListeners(), returnsNormally);
    });

    test("Set Length", () {
      notifierList.value.length = 5;
      List<String?> response = List.from(notifierList.value);
      expect(notifierList.value.length, response.length);
    });

    test("Test get element using operator", () {
      String response = "Test";
      expect(notifierList.value[0], response);
    });

    test("Test set element using operator", () {
      notifierList.value.length = 5;
      String response = "New Test";
      notifierList.value[1] = response;
      expect(notifierList.value[1], response);
    });

    test("Add", () {
      List<String?> response = List.from(notifierList.value);
      response.add("Add");
      notifierList.value.add("Add");
      expect(notifierList.value, response);
    });

    test("Insert", () {
      List<String?> response = List.from(notifierList.value);
      response.insert(0, "Show");
      notifierList.value.insert(0, "Show");
      expect(notifierList.value, response);
    });

    test("Remove", () {
      List<String?> response = List.from(notifierList.value);
      response.remove("Show");
      notifierList.value.remove("Show");
      expect(notifierList.value, response);
    });

    test("RemoveAt", () {
      List<String?> response = List.from(notifierList.value);
      response.removeAt(0);
      notifierList.value.removeAt(0);
      expect(notifierList.value, response);
    });

    test("clear", () {
      List<String?> response = List.from(notifierList.value);
      response.clear();
      notifierList.value.clear();
      expect(notifierList.value.length, response.length);
    });

    test("addAll", () {
      List<String?> response = List.from(notifierList.value);
      response.addAll(List.generate(10, (index) => "TEST"));
      notifierList.value.addAll(List.generate(10, (index) => "TEST"));
      expect(notifierList.value.length, response.length);
    });
  });
}