@echo off
REM 建立 get_dart_ex 目錄
mkdir get_dart_ex
REM 進入所建立的目錄
cd get_dart_ex
REM 將此目錄起始為 git 倉儲
git init
REM 在此倉儲啟動 sparse checkout 功能
git config core.sparsecheckout true
REM 將此倉儲與 40823142 帳號下的 cp2019倉儲對應, 且將倉儲連結命名為 origin
git remote add -f origin https://github.com/40823142/cp2019.git
REM 將要取下的倉儲目錄名稱, 存入 sparse-checkout 設定檔案中
echo downloads/dart_ex >> .git/info/sparse-checkout
REM 拉下 origin 中的 master 分支, 這時只會取下 dart_ex 目錄中的檔案
git pull origin master
cd ..