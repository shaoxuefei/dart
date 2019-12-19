
main() {
    var a;
    var b= a ??10;
    a??=11;
    print(a);
    print(b);

    var sex="男";

    switch(sex){
        case "女":
          print("女");
        break;

        case "男":
       print("男");
          break;

         default :
        print("其他");
           break; 
    }

    var age=30;

    var mysex="男";

    print("$age $mysex");

    var str="你好";//这种定义后str类型已经确认就是String类型

    var sanmu=str=="你好"?"你好":"你不好";
    print(sanmu);


    var strInt="123";
    int intStr=int.parse(strInt);

    //isEmpty
    if(str.isEmpty){
      print("null");
    }

    //Nan
    var myNumber=0/0;//不会报错，结果是Nan，0不能作为被除数
    print(myNumber);

    if(myNumber.isNaN){

    }

    //运算符

    var sum=0;
    sum+=10;//sum=sum+10;
    sum*=10;//sum=sum*10
    var dex=12/10;//不是取整，值为1.2
    var dex1=12%10;//取余数 2
    var dex2=12~/10;//取整 1

    print("$dex $dex1  $dex2");//$a 输出的是a对象的值，类似于java中的'/ 转义字符

    print(sum);
    //自增、自检

    var autoAdd=10;
    // autoAdd++;//a=a+1;
    // print(autoAdd);//11
    //注意 a++和 ++a的区别;;--a和a--的区别
    // ++autoAdd;//值也是11

    // var autoValue=autoAdd++;
    // print(autoValue);//值是10///autoAdd++的话，会先把autoAdd付给autoValue，然后在++;
    // print(autoAdd);//值为11

    var autoValue2=++autoAdd;
    print(autoValue2);//值是11///++autoAdd的话，会先++,然后把autoAdd付给autoValue;
    print(autoAdd);//值为11
    //同理这种直接print中输出的话也是如此
    print(autoAdd++);//输出11
    print(++autoAdd);//输出12
    

    //$ ++ -- 


}
