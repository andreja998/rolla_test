import 'package:rolla_zadatak/features/log_page/domain/entities/log/log.dart';

List<Log> mergeSortLogList(List<Log> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int mid = arr.length ~/ 2;
  List<Log> leftList = mergeSortLogList(arr.sublist(0, mid));
  List<Log> rightList = mergeSortLogList(arr.sublist(mid));

  return merge(leftList, rightList);
}

List<Log> merge(List<Log> leftList, List<Log> rightList) {
  List<Log> mergedList = [];
  int leftIndex = 0;
  int rightIndex = 0;

  while (leftIndex < leftList.length && rightIndex < rightList.length) {
    final leftId = int.parse(leftList[leftIndex].id!);
    final rightId = int.parse(rightList[rightIndex].id!);
    
    if (leftId < rightId) {
      mergedList.add(leftList[leftIndex]);
      leftIndex++;
    } else {
      mergedList.add(rightList[rightIndex]);
      rightIndex++;
    }
  }

  while (leftIndex < leftList.length) {
    mergedList.add(leftList[leftIndex]);
    leftIndex++;
  }

  while (rightIndex < rightList.length) {
    mergedList.add(rightList[rightIndex]);
    rightIndex++;
  }

  return mergedList;
}