import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../model/sample_data_response.dart';


class DataBaseHelper{
  DataBaseHelper._privateConstructor();

  static final DataBaseHelper dbInstance = DataBaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get getDatabase async =>_database ??=await _initDatabase();

  Future<Database> _initDatabase() async{

    Directory documentDirectory = await getApplicationSupportDirectory();
    String path = join(documentDirectory.path, 'tdbb.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );

  }

  FutureOr<void> _onCreate(Database db, int version) {
    db.execute(
        """
        CREATE TABLE test(
          id INTEGER PRIMARY KEY,
          userId INTEGER,
          title TEXT,
          body TEXT
          )
          
          """
    );
  }
  Future<int> addSampleData(SampleData modelObj) async{
    Database db = await dbInstance.getDatabase;
    return await db.insert("test", modelObj.toJson());
  }

  Future<List<SampleData>> getData()async{
    Database db =await dbInstance.getDatabase;
    var todos  = await db.query('test',orderBy: 'id');


    List<SampleData> todoList= todos.isNotEmpty?todos.map((modelObj) => SampleData.fromJson(modelObj)).toList():[];

    return todoList;
  }

  Future deleteTodo(int id) async{
    Database db =await dbInstance.getDatabase;
    return await db.delete('test',where: 'id=?',whereArgs: [id]);

  }

  Future updateTodo(SampleData todo) async{
    Database db =await dbInstance.getDatabase;
    return await db.update(
        'test',
        todo.toJson(),
        where: 'id=?',
        whereArgs: [todo.id]

    );


  }

}

