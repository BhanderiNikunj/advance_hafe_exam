import 'package:adavance_hafe_exam/Screen/Todo/Contorllor/TodoContorllor.dart';
import 'package:adavance_hafe_exam/Screen/Todo/Model/TodoModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TodoContorllor todoContorllor = Get.put(
    TodoContorllor(),
  );
  TextEditingController txtTask = TextEditingController();
  TextEditingController txtCate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Todo App"),
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Add Data"),
                  actions: [
                    TextField(
                      controller: txtTask,
                      decoration: InputDecoration(
                        label: Text("Tour Task"),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        prefixIcon: Icon(Icons.task),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: txtCate,
                      decoration: InputDecoration(
                        label: Text("Tour Category"),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        prefixIcon: Icon(Icons.category_outlined),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Cancel"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            String Task = txtTask.text;
                            String Cate = txtCate.text;

                            TodoModel t1 = TodoModel(
                              Categroy: Cate,
                              Task: Task,
                            );

                            todoContorllor.TodoList.add(t1);

                            print(todoContorllor.TodoList);
                            print(todoContorllor.TodoList);
                            Navigator.pop(context);
                          },
                          child: Text("Submit"),
                        ),
                      ],
                    ),
                  ],
                );
              },
            );
          },
          child: Icon(Icons.add),
        ),
        body: Obx(
          () => Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${todoContorllor.TodoList[index].Task}",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "${todoContorllor.TodoList[index].Categroy}",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      String task = txtTask.text;
                                      String cate = txtCate.text;

                                      TextEditingController txtuTask =
                                          TextEditingController(text: task);
                                      TextEditingController txtuCate =
                                          TextEditingController(text: cate);

                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text("Add Data"),
                                            actions: [
                                              TextField(
                                                controller: txtuTask,
                                                decoration: InputDecoration(
                                                  label: Text("Tour Task"),
                                                  disabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.black,
                                                      style: BorderStyle.solid,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  prefixIcon: Icon(Icons.task),
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.black,
                                                      style: BorderStyle.solid,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.black,
                                                      style: BorderStyle.solid,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              TextField(
                                                controller: txtuCate,
                                                decoration: InputDecoration(
                                                  label: Text("Tour Category"),
                                                  disabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.black,
                                                      style: BorderStyle.solid,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  prefixIcon: Icon(
                                                      Icons.category_outlined),
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.black,
                                                      style: BorderStyle.solid,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.black,
                                                      style: BorderStyle.solid,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text("Cancel"),
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      String Task =
                                                          txtuTask.text;
                                                      String Cate =
                                                          txtuCate.text;

                                                      TodoModel t1 = TodoModel(
                                                        Categroy: Cate,
                                                        Task: Task,
                                                      );
                                                      todoContorllor
                                                          .TodoList[index] = t1;
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text("Submit"),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      todoContorllor.TodoList.removeAt(index);
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      todoContorllor.TodoList1.add(
                                          todoContorllor.TodoList[index]);
                                    },
                                    icon: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: todoContorllor.TodoList.length,
                ),
              ),
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${todoContorllor.TodoList[index].Task}",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "${todoContorllor.TodoList[index].Categroy}",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        todoContorllor.TodoList1.removeAt(
                                            index);
                                      },
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: todoContorllor.TodoList1.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
