import 'package:serverpod/serverpod.dart';
import 'package:todo_server/src/generated/protocol.dart';

class TodoEndpoint extends Endpoint {
  Future<bool> addTodo(Session session, Todo todo) async {
    await Todo.insert(session, todo);
    return true;
  }

  Future<List<Todo>> getTodos(Session session) async {
    final todos = await Todo.find(session);

    return todos;
  }
}
