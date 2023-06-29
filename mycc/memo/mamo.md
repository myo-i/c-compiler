# 作成されるノードのイメージ
### 優先順位
expr       = equality
equality   = relational ("==" relational | "!=" relational)*
relational = add ("<" add | "<=" add | ">" add | ">=" add)*
add        = mul ("+" mul | "-" mul)*
mul        = unary ("*" unary | "/" unary)*
unary      = ("+" | "-")? primary
primary    = num | "(" expr ")"

### 入力
5+20-4
5 -> primary
+ -> add
20 -> primary
- -> add
4 -> primary
    -    
  +    4
5  20    


- - +10
- -> unary
- -> unary
+ -> unary
10 -> primary
  -
  -
  +
  10


練習問題
1+2*3+(2+1)*-10
1 -> primary
+ -> add
2 -> primary
* -> mul
3 -> primary
+ -> add
(2+1)primary
* -> mul
- -> add
10 -> primary

          +         
         / \
        /   \
       /     \
      /       \
     +         *     
    / \       / \
   /   \     /   \
  1     *   +     -   
       / \  / \  /  \
      2   3 2  1 -  10
