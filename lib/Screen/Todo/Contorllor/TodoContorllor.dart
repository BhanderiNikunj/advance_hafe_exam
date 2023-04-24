import 'package:adavance_hafe_exam/Screen/Todo/Model/TodoModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TodoContorllor extends GetxController {

  RxList<TodoModel> TodoList = <TodoModel>[
    TodoModel(
      Task: "Food",
      Categroy: "Home",
    ),
  ].obs;
  RxList<TodoModel> TodoList1 = <TodoModel>[].obs;
}
