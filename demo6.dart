
List list=[3,2,5,7];


bool isEvenNumber(int n){
    if(n%2==0){
      return true;
    }

    return false;
}


main() {


  /**
   * forEach()方法便利List数组的数据
   */

  // list.forEach((value){
  //   print(value);
  // });

  /**
   * 箭头函数
   * =>指向就表示{}方法体执行，但是只能执行一句代码，不可执行多行代码
   */
  // list.forEach((value)=>print(value));
  // //箭头函数另一种写法
  // list.forEach((value)=>{
  //    print(value)//也是只能写一行代码-->而且不用加分号
  // });

  /**
  * list.map()--->便利list数组，修改内部值，返回新的数据
  */
  // var newList=list.map((value){
  //   if(value>2){
  //       return value*2;
  //   }
  //   return value;
  // });

  // var newList=list.map((value)=>value>2?value*2:value);
  // print(newList);
 //print(newList.toList());//list.map.toList()--->转换为List的对象

  /**
   * 方法内调用封装的方法--这种比较常见java
   */
  // void printEvenum(int n){
  //     for(int i=1;i<n;i++){
  //       if(isEvenNumber(i)){
  //         print(i);
  //       }
  //     }
  // }
  // printEvenum(100);

  /**
   * 匿名方法
   * 一个方法没有声明方法名，如给一个变量，然后该变量其实也就是个方法的对象类型？
   */

  var nikeMethod=(){

  };
  nikeMethod();

  /**
   * 闭包
   * 返回一个匿名方法
   */
 closeMethod(){
     int myNumber=1;
     return (){
       myNumber++;
         print(myNumber);
     };
  };

  //这种写法是错误的，切记，这只是啊声明并不是调用，只有调用时才能赋值
  // var returnNewNike =closeMethod(){
  //    int myNumber=1;
  //    return (){
  //      myNumber++;
  //        print(myNumber);
  //    };
  // };

  var returnNewNike=closeMethod();
  

  returnNewNike();//直接调用 closeMethod();不行因为其内部知识返回一个匿名方法，并没有执行

}