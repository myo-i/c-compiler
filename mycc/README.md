cc -o mycc mycc.c
<!-- 255以上の数字でエラー -->
./mycc 123 > tmp.s
cc -o tmp tmp.s

chmod a+x test.sh
./tmp
<!-- 直前のコマンドの終了コードを表示 -->
echo $?