import 'dart:io';
import 'package:path/path.dart';
import 'package:excel/excel.dart';

void main(List<String> args) {
  var file = "assets/results/RESULTS_TEMPLETE.xlsx";
  var bytes = File(file).readAsBytesSync();
  var excel = Excel.createExcel();
  //var excel = Excel.decodeBytes(bytes);


  for (var table in excel.tables.keys) {
    print(table);
    print(excel.tables[table]!.maxCols);
    print(excel.tables[table]!.maxRows);
    for (var row in excel.tables[table]!.rows) {
      print("${row.map((e) => e?.value)}");
    }
  }
}