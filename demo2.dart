

import 'dart:collection';

import 'dart:math';

void main() {
  var str="你好";

  String string="你好";//string

  int number=123;//int

  bool isTrue=true;//布尔

  //定义list的方法

  List myList=["nihao1","dad","dad"];

  var myList2=["dad","dada","dad"];

   var myList4=[13,34,54];

  List<String> myList3=["dada","dadd"];//跟Array数组有点像

  print(myList[0]);//打印单独位置position值
  print(myList);


  var myNewList=new List<String>();
  myNewList.add("dadad");
  myNewList.add("sss");

  

  List<String> myNew=new List();//也不是不可以

  //Map集合

  var maps={
    "key1":123,
    "key2":"你好"
  };

  HashMap maps3=new HashMap();

  var maps2=new Map();//不指定参数类型的话可以添加多种类型new Map<String,String>
  maps2["key1"]="1234";
  maps2["key2"]=12344;

  print(maps);
  print(maps["key1"]);
  print(maps2["key2"]);

  //is 关键字比对  instance
  var a=123;
  var b=234;
  if(a==b){

  }else{

  }

  if(a is String){

  }else if(a is int){

  }else if(a is bool){

  }

}