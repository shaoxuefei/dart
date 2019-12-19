
void methodOne(){

}


void method2(param1,String param2){

}

 void method3(String params1){

  void methodIndex(){
      print(params1??"我是默认值");
  }
  methodIndex();//内部方法作用域
}

List<String> getList(){
  return ["你好","好的"];
}

/**
 * 方法传参
 */
void fun(){
    print("我是方法传参调用输出的");
}

void method4(funName){
    // funName();//调用传进来的fun的方法
  }
  //method4(fun);//调用

/**
 * 匿名方法--没有方法名--》类似于方法的值付给了对应的变量nikeMethod,调用nikeMethod()
 * 跟上边方法参数有点类似
 */
var nikeMethod=(){
    return "我是个匿名方法";
};

/**
 * 定义可选参数的方法
 * 
 * [参数]，内部参数调用该方法的时候可以不传,但是传的话位置顺序不能乱
 * chooseParamsMethod("张三");
 * chooseParamsMethod("张三","女");
 * chooseParamsMethod("张三","女",20);
 */
String chooseParamsMethod(String name,[String sex,int age]){
return "可选参无指定默认参数 $name  $sex  $age";
}


/**
 * 定义带默认参数的方法
 * [String sex="男",int age]
 * sex 参数如果调用方法的时候不传的话，默认是男
 * chooseDefaultParams("李四");-->对应的sex值就是男
 * 当然也可以传对应的sex参数来替代默认参数
 * chooseDefaultParams("李四","女");--->对应的sex值是女
 */
String chooseDefaultParams(String name,[String sex="男",int age]){
    return "可选参数指定默认参数 $name  $sex  $age";
}

/**
 * 定义一个命名参数的方法
 * 参数也可以指定默认参数
 * hasParamNameMethod("王五",sexValue:"男",ageValue:18);
 * 调用时，命名参数必须指定对应的key调用
 */
String hasParamNameMethod(String name,{String sexValue,int ageValue=20}){

    return "命名参数 $name  $sexValue  $ageValue";
}

main() {
    method3(null);
  
    method4(fun);

    print(nikeMethod());

   print(chooseParamsMethod("张三"));
   print(chooseParamsMethod("张三","女"));
   print(chooseParamsMethod("张三","女",20));

   

   print(chooseDefaultParams("李四"));
   print(chooseDefaultParams("李四","女"));

   print(hasParamNameMethod("王五",sexValue:"男",ageValue:18));
}