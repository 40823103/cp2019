// 在 dart 使用基本數學函數前,必須導入 dart:math
import 'dart:math' as math;
// 下列 Dart 程式, 利用 Runge Kutta 迭代運算法, 解常微分方程式
// 設 t 為時間, x 則設為物體的位移
// dx / dt = (7*y^2*x^3), 求 x=2 時的 dydx 值
// 可以利用下列 rungeKutta 函式, 以h 為每步階增量值
// 求 dydx 常微分方程式任一 y 的對應值 x
// 定義函式 rungeKutta, 共有兩個輸入變數
rungeKutta(y, h)
{
  int n = 1;
  // 宣告 x 為雙浮點數, 且設為起始值 2
  double x = 2;
  // y 終點值與步階增量值 h, 迭代求 x 對應值
  // 索引值 i 將每次增量 1, 從 i=1 執行 for 環圈至 i=n
  for (int i = 1; i <= n; i++) {
    // 將此階段的 y 與 x 值代入 dydx 函式求下列四個浮點變數值
    double k1 = h * dydx(y, x);
    double k2 = h * dydx(y + 0.5 * h, x + 0.5 * k1);
    double k3 = h * dydx(y + 0.5 * h, x + 0.5 * k2);
    double k4 = h * dydx(y + h, x + k3);
    // 利用上述四個變數值求此步階增量後的對應 x 值
    x = x + (1.0 / 6.0) * (k1 + 2 * k2 + 2 * k3 + k4);
    // 每次 for 迴圈執行最後, 準備計算下一個步階增量後的 x 對應值
    // y 起始值配合步階增量值 h, 進行增量
  }
  // 完成 for 迴圈迭代後, 傳回與 y 終點值對應的 x 值
  return x;
}

// 將微分方程式 "dx / dt = 7*y^2*X^3" 定義為 dydx 函式
dydx(y, x) {
  return (7*e*w );
}  
  num y = 3;
  num x=2;
  num e = math.pow(y,2);
  num w = math.pow(x,3);
// 定義 main() 主函式內容, 目的在利用 rungeKutta 函式
// 解常微分方程式
main() {
 // Driver method
// num 資料型別可以是整數或雙浮點數
  num h = 0.1;
    double aSolution = 3;
  // 定義誤差 % 值為 errPercent
  double errPercent;
  // 期望誤差 % 值, 定義為 expError, 設為 0.001 %
  double expError = 0.001;
  // 增量從 0.1 開始, 每次迴圈增量減半至誤差值小於 expError %
  // 在期望條件尚未符合之前, 持續縮小增量值, 並且重複執行運算
  do {
    double nSolution = rungeKutta(y, h);
    //print('t=$t, h=$h 時, 解析解答案為: $aSolution');
    // 利用內建的 abs() 方法求誤差的絕對值
    errPercent = (nSolution - aSolution) / nSolution.abs() * 100;
    print('y=$y, h=$h 時, 數值解為: $nSolution, 誤差為: $errPercent %');
    print('*' * 30);
    h = h / 2;
  } while (errPercent > expError);
}
