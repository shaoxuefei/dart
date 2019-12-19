/**
 * dart 对象操作符
 * is  as  ..
 */

class Person {

  String name;
  int age;

  static String sex;


   Person(String name,int age,String sex){
      this.name=name;
      this.age=age;
      Person.sex=sex;
  }

  //或者这样的构造方法
  // Person(this.name,this.age);


  void printInfo(){
    print("姓名  ${this.name}  $age  $sex" );//非静态方法可以访问非静态方法和非静态变量/静态方法和静态变量
  }

   void work(){
    print("我在工作" );
  }

  static void printStaticInfo(){
    print("性别： $sex");//静态方法不能访问非静态方法和非静态变量
  }
  //私有方法
  void _perind(){
    print("object");

    
  }

}


//类的继承

class WebExtra  extends Person{
  //父类继承方法--实现父类的构造方法(如果父类没有无参构造,那么需要强行重写)
  WebExtra(String name, int age, String sex) : super(name, age, sex);

  @override
  void printInfo() {
    super.printInfo();
     print("姓名  ${this.name}  年龄$age  性别 ${Person.sex}" );
  }
   
}

//抽象类的实现
//抽象类abstract--可以继承extands、可以impletment实现

abstract class People{

  People(){}

  String name;

  void eat();

  void run();

  void printInfo(){
    print("父类非抽象方法");
  }
}  

abstract class PeopleAbs{

  void printAbsInfo(){
    print("父类PeopleAbs非抽象方法");
  }
}  

abstract class PeopleAbsOther{
  void printPeopleAbsOtherInfo(){
    print("父类PeopleAbs非抽象方法");
  }

  void peopleOtherAbs();
} 
/**
 * 抽象类思想的方法：extends和implements的区别
 */
//extends 实现People抽象类，必须实现内部所有的抽象方法，可以依赖父类的方法
class People2 extends People{
  @override
  void eat() {
  }

  @override
  void run() {
  }
}
//把抽象类当成接口来使用，必须实现内部所有的方法，包括非抽象方法而且还必须重写所有的定义变量，不能依赖父类的方法和变量的值：比如printInfo：
//一个类实现多个接口
//如果用接口实现的话因为其不依赖父类的属性、所以抽象的父类其有没有构造方法都是无所谓的，不用实现他的构造方法
class People3 implements People,PeopleAbs{
  @override
  String name;

  @override
  void eat() {
  }

  @override
  void printInfo() {
  }

  @override
  void run() {
  }

  @override
  void printAbsInfo() {
  }
}

//extends 不能继承多个抽象类、继承类
//所以用mixins-----with关键词
/**
 * with 抽象的抽象类不能有构造方法、不能有继承的父类、想想也就是这样，不然extends的话需要实现其构造方法，那么到底实现那个父类的构造方法了
 * 
 * extends---继承可以继承实体类、抽象类
 * with---实现多个实体类抽象类，类似于extends的效果
 * implements---可以实现多个接口类
 */
class People4 extends People with PeopleAbs,PeopleAbsOther{
  @override
  void eat() {
  }

  @override
  void run() {
  }

  @override
  void peopleOtherAbs() {
  }
  
}

class People5 with PeopleAbs,PeopleAbsOther{
  @override
  void peopleOtherAbs() {
  }
  
}


main() {
  
  Person person=new Person("张三",23,"男");
  if(person is Person){
    person.printInfo();
  }

  //as  转换符
  var p1;
  p1=new Person("张三",23,"男");
  (p1 as Person).printInfo();//将p1转换成为Person对象类型

  //.. 连缀操作符，类似于builder

  person.name="李四";
  person.age=20;
  Person.sex="男";

//连缀运算符
  person..name="王五"
        ..age=35
        ..printInfo();

   WebExtra webExtra=new  WebExtra("琪琪",25,"女");
   webExtra.printInfo();

   webExtra.work();

   //抽象类不能实例化，必须实现抽象类，实例化对应的抽象类
   People2 people2=new People2();
   People3 people3=new People3();

   people2.printInfo();
   people3.printInfo();

   People4 people4=new People4();

   print(people4 is People);
  print(people4 is PeopleAbs);
  print(people4 is PeopleAbsOther);
   
}