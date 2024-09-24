import 'package:flutter/material.dart';
import 'package:flutter3/hive.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('open');
  runApp(MaterialApp(
    home: Hivee(),
  ));
}

class Hivee extends StatefulWidget {
  const Hivee({super.key});

  @override
  State<Hivee> createState() => _HiveeState();
}

class _HiveeState extends State<Hivee> {
  List<Map<String, dynamic>> task2 = [];
  final mybox = Hive.box('open');

  @override
  void initState() {
    load_or_read_task();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DISPLAY'),
      ),
      body: task2.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: task2.length,
              itemBuilder: (context, Index) {
                final mytask2 = task2[Index];
                return Card(
                  child: ListTile(
                    title: Text(mytask2['taskname']),
                    subtitle: Text(mytask2['taskcontent']),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {
                              showTask(context, mytask2['id']);
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {
                              deleteTask(mytask2['id']);
                            },
                            icon: Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showTask(context, null),
        label: Text('New task'),
        icon: Icon(Icons.add),
      ),
    );
  }

  final taskcontroller = TextEditingController();
  final contentcontroller = TextEditingController();

  void showTask(BuildContext context, int? itemkey) {
    if (itemkey != null) {
      final existingTask =
          task2.firstWhere((element) => element['id'] == itemkey);
      taskcontroller.text = existingTask['taskname'];
      contentcontroller.text = existingTask['taskcontent'];
    }
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom + 130),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                TextField(
                  controller: taskcontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Task name'),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: contentcontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'type here'),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (taskcontroller.text != "" &&
                          contentcontroller.text != "") {
                        if (itemkey == null) {
                          createTask({
                            "heading": taskcontroller.text.trim(),
                            "content": contentcontroller.text.trim(),
                          });
                        }
                      }
                      taskcontroller.text = "";
                      contentcontroller.text = "";
                      Navigator.of(context).pop();
                    },
                    child:
                        Text(itemkey == null ? 'create task' : "update task"))
              ],
            ),
          );
        });
  }

  Future<void> createTask(Map<String, dynamic> task) async {
    await mybox.add(task2);
    load_or_read_task();
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(
          backgroundColor: Colors.blueAccent,
          content: Text('task added successfully')));
  }

  void updateTask(int? itemkey, Map<String, String> uptask) async {
    await mybox.put(itemkey, uptask);
    load_or_read_task();
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(
          backgroundColor: Colors.amber,
          content: Text('update successfully')));
  }

  void load_or_read_task() {
    final taskkk = mybox.keys.map((Key) {
      final values = mybox.get(Key);
      return {
        "id": Key,
        "taskname": values["heading"],
        "taskcontent": values['content']
      };
    }).toList();
    setState(() {
      task2 = taskkk.reversed.toList();
    });
  }

  Future<void> deleteTask(int itemkey) async {
    await mybox.delete(itemkey);
    load_or_read_task();
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('task deleted successfully')));
  }
}
