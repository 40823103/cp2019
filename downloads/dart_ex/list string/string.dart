main(){  
//字串temp為[40C,80C,50F,40C,25F]
 List temp = ["40C", "80C", "50F", "40C", "25F"];
  for (var i in temp) {
  var a = int.parse(i[0]+i[1]);
  //將字串轉數字
    if (i[2] == "C") {
    double k=(9/5)*a+32;
    print("攝氏$i度=華氏$k度");
}
    else{ 
    double m=(a-32)*5/9;
    print("攝氏$i度=華氏$m度");

}
}
/*
 for迴圈使i=temp
 if當i字串第三個字是C時,執行
    double k=(9/5)*a+32;
    print("攝氏$i度=華氏$k度");
  else否時,執行
    double m=(y-32)*5/9;
    print("攝氏$i度=華氏$m度");
 */
}
