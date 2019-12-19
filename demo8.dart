
//泛型类T    <T>
class Person<T>{
  List<T> list=new List();
}

//泛型接口
abstract class StockBean<T> {
  void setStr(T value);

  T getStr();
} 

//实现泛型类--java里也有
class StockPerBean<T> extends StockBean<T>{
  @override
  T getStr() {
    return null;
  }

  @override
  void setStr(T value) {
  }

}

main() {
  Person person=new Person();
  person.list.add("你好");
  person.list.add("千里之外");
  person.list.add(12);


  Person person2=new Person<String>();  
  // person2.list.add(12);//错误的
  person2.list.add("杰伦");

  print(person.list);
  print(person2.list);
}