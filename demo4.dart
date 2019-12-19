
main() {
  
  List personList=["小米","小明","小胡"];

  for(int i=0;i<personList.length;i++){
    print(personList[i]);
  }

  List personList2=[
    {"name":"小明"
    ,"age":23
    ,"sex":"男"},
      {"name":"小米"
    ,"age":13
    ,"sex":"男"},
      {"name":"小胡"
    ,"age":33
    ,"sex":"男"}
    ];

    for(int i=0;i<personList.length;i++){
    print(personList2[i]);
    print(personList2[i]["name"]);
    }
    List personList3=[
      {"name":"雪碧",
        "color":[{"colors":"黄",
                 "number":20 ,
                 "price":"箱"},
                 {"colors":"红",
                 "number":50 ,
                 "price":"箱"}
                 ] ,
        "orances":"河南"                 
      },

       {"name":"柠檬",
        "color":[{"colors":"黑",
                 "number":20 ,
                 "price":"箱"},
                 {"colors":"绿",
                 "number":50 ,
                 "price":"箱"}
                 ] ,
        "orances":"河南"                 
      },

       {"name":"可乐",
        "color":[{"colors":"黑色",
                 "number":20 ,
                 "price":"箱"},
                 {"colors":"白色",
                 "number":50 ,
                 "price":"箱"}
                 ] ,
        "orances":"河南"                 
      }
    ];

    for(int i=0;i<personList3.length;i++){

      print(personList3[i]["orances"]);
      for(int j=0;j<personList3[i]["color"].length;j++){
          print(personList3[i]["color"][j]["colors"]);
      }
    }

    //while()  do while()
    //break,continue
    /**
     * break 调出循环，但是只能调出一层循环，不能调出多层循环
     * 
     * continue 不跳出循环，只是结束当前后续操作，执行下一次循环体
     * 
     * return 直接跳出所有循环，并且该方法内的循环外底部的逻辑也不会执行
     */

    for (int i=0;i<3;i++){
      print("我是I");
      for(int j=0;j<2;j++){
          if(j==1){
            return;
           }
         print("我是J"+j.toString());
      }
    }
    print("return 之后");//return 之后不会执行




  
}