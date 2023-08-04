import 'package:fast_app_base/screen/main/tab/result/site_dummy.dart';
import 'package:fast_app_base/screen/main/tab/result/vo/vo_location.dart';

import '../../../../common/constants.dart';

final location1 = Location(site1, '4층-1', 'vacteria', 10, '$basePath/target_bacteria/TSA_1.jpg');
final location2 = Location(site1, '4층-2', 'vacteria', 20, '$basePath/target_bacteria/TSA_2.jpg');
final location3 = Location(site1, '4층-3', 'vacteria', 30, '$basePath/target_bacteria/TSA_3.jpg');
final location4 = Location(site2, '2층-1', 'vacteria', 40, '$basePath/target_bacteria/TSA_4.jpg');
final location5 = Location(site2, '2층-2', 'vacteria', 50, '$basePath/target_bacteria/TSA_5.jpg');
final location6 = Location(site3, '대합실-1', 'vacteria', 60, '$basePath/target_bacteria/TSA_6.jpg');
final location7 = Location(site3, '대합실-2', 'vacteria', 70, '$basePath/target_bacteria/TSA_7.jpg');
final location8 = Location(site3, '대합실-3', 'vacteria', 80, '$basePath/target_bacteria/TSA_8.jpg');

main(){

}


final List<Location> locations = [
  location1, location2, location3, location4, location5, location6, location7, location8
];