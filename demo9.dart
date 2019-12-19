//库的引用--本地库
import 'People1.dart';
import 'People2.dart' as lib;

//库的引用--dart原生库引用
import 'dart:math';

//库的引用--第三方库pub--引用第三方库需要在
//常用地第三方库的地址：pub.dev/packages
import 'dart:convert' as convert;//内部请求方法：jsonDecode
import 'package:http/http.dart' as http;//内部请求方法：get、post
import 'package:date_format/date_format.dart';
main() {
 //当导入的库里有重复的类引用的话，系统不知道你引用的是哪个库里的People类，所以需要指明区分用as关键词 
 People people1=new People();
 print(people1.getPageName());

 lib.People people2=new lib.People();
 print(people2.getPageName());

 print(min(12,34));
 print(max(12,69));

 requestData();
//时间转换格式修改
 print(formatDate(DateTime(1996,2,12), [yyyy,"-",mm,"-",dd]));

}
requestData() async{
  var url="http://ggservice-pre.go-goal.cn/v1/app_ucenter/list_msgs?app_key=VzNQumNMxCmPcbD&os=701&time_stamp=1576738904&account_name=E00046145&sign=ajgnueusTOIGIIU8dffFygUV2dM%3D%0A&msg_type=7702&page=1&rows=20&token=b077cd8af8ac46faadd55c1632ffd6d8";

  var responce= await http.get(url,headers: {"key1":"value1","key2":"value2"});
  if(responce.statusCode==200){
    var jsonResonce=convert.jsonDecode(responce.body);
    var dataJson=jsonResonce["data"];
    print("Http Number:   $dataJson");
  }else{
    print("Error");
  }

}