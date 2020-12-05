import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notekeeper/screens/add_task_screen.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  Widget _buildTask(int index) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Task Title'),
              subtitle: Text('Oct 2, 2019 - High'),
              trailing: Checkbox(
                onChanged: (value) {},
                activeColor: Theme.of(context).primaryColor,
                value: true,
              ),
            ),
            Divider()
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => AddTaskScreen())),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.white,
            systemNavigationBarColor: Colors.white,
            systemNavigationBarIconBrightness: Brightness.dark),
        child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 80.0),
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'My Tasks',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '1 of 10',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ]));
              }
              return _buildTask(index);
            }),
      ),
    );
  }
}
