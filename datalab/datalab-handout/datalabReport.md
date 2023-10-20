## ICS Lab1 : datalab

##### 终端中执行 `./dlc -e bits.c` 后的截图。
![dlcRes](pic/dlcRes.png)

##### 终端中执行 `./btest` 后的截图。
![btestRes](pic/btestRes.png)

##### 各个函数的简要实现思路
1.  `tconst`

要求：返回一个常数值 `0xFFFFFFE0`。

这个值不在可使用常量的范围内，但注意到对 `0x1F` 按位取反即可得到这个常数。

2.  `bitNand`

要求：只使用 `~ |` 返回 `~(x & y)`

由 $\rm De \ Morgan$ 定律知 `~(x & y) = ~x | ~y`。

3.  `ezOverflow`

要求：确定两个有符号正数相加是否会溢出，如果发生溢出则返回1，否则返回0。

由于是两个有符号正数相加，其在 `unsigned` 模式下取值为 `0 ~ 2 ^ 32 - 2`， 不足以使最高位溢出，故检测最高位即可。

4.  `fastModulo`

要求：返回 `x%(2^y)`,其中 `0 <= x, 1 <= y <= 31`

设 `x` 的位模式为 $(a_{31}a_{30} \dots a_1 a_0)_2$，则可以知道:

$x = a_{31} * 2^{31} + a_{30} * 2^{30} + \dots + a_1 * 2 + a_0$。 设有 $a_r, r >= y$, 则有 $a_r * 2^r \ mod \ 2 ^ y = 0$。

故对 `2 ^ y` 取模，只需要保留低于 $a_y$ 的位置的值，其他位置置为 0 。

5.  `findDifference`

要求：返回一个掩码，标记了与 x 比较时 y 的不同位。

即需要用 `~ |` 来实现异或。结合 $\rm De \ Morgan $ 定律， `a ^ b = (~a & b) | (a & ~b) = ~(a | ~b) | ~(~a | b)`。

6.  `absVal`

要求：返回 x 的绝对值。

由于涉及到了正负，先考虑保留符号位 `int sign = x >> 31;`。而补码下负数与正数的转换为 `-x = ~x + 1`，故这里的处理流为：
```c
if (sign == 0xFFFFFFFF)
    return ~x + 1;
else
    return x;
```

同时注意到 `~x = x ^ 0xFFFFFFFF, x = x ^ 0x0`。故上面的代码可以合并为一行 `return (x ^ sign) + (sign & 0x1);`。

实际上， `(x ^ sign) + (sign & 0x1)` 执行的操作是根据 `sign` 的来进行正负的改变。若 `sign == 0`，符号不变，若 `sign == 0xFFFFFFFF`，则符号改变。这个性质在之后的函数中有使用。

7.  `secondLowBit`

要求：返回一个掩码，标记第二位最低有效位的位置。

最低有效位可以通过 `x & -x = x & (~x + 1)` 来得到，故考虑两次寻找最低有效位。

8.  `byteSwap`

要求：交换第 n 个字节和第 m 个字节。

分别取得第 n 个和第 m 个字节然后交换即可。如取得第 n 个字节：`int nbyte = (x >> (n << 3)) & 0xFF;`。随后将第 n 个字节和第 m 个字节置 0 ，再将交换后的字节移到对应字节上即可。

9.  `byteCheck`

要求：返回不等于 0 的字节的数量。

由于这题提供了 `!` 运算符，依次获取字节取反即可

10. `fractions`

要求：返回 `floor(x * 7 / 16)`

注意到 `x * 7 / 16 = x * (8 - 1) / 16`,另外 `floor` 在整数除法的前提下自然满足，故可以得到语句 `return ((x << 3) + ~x + 1) >> 4;`

11. `biggerOrEqual`

要求：如果 x 大于等于 y，则返回 1，否则返回 0。

考虑比较 x - y >= 0. 只用考虑符号位即可。但是这种情况下可能溢出，需要考虑溢出的情况。x，y 一正一负时，有可能溢出。若不溢出，按正常情况处理；若溢出，返回取反后的 x 的符号位。x，y 同号时，不会溢出（严格来说 `0x80000000 0x80000000` 比较时 `sub` 会溢出，但不影响结果），按正常情况处理。

核心代码：
```c
  int sub = x + (~y + 1);
  int sign = sub >> 31;
  int overflow = ((x ^ y) & (x ^ sub)) >> 31;
  return (((overflow & ~x) | (~overflow & ~sign)) >> 31) & 0x1;
```

12. `hdOverflow`

要求：检测两个有符号32位整数相加是否溢出，并在溢出时返回1，否则返回0。

与 11 题思路相同，当两个数符号相同且它们的和与其中一个的符号不同时，可以认为发生了溢出。

13. `overflowCalc`

要求：给定三个32位正数的二进制表示，将它们相加，返回位数超过32位的部分的二进制表示。

这里考虑的溢出情况与上一题有所不同。这里的溢出有两种情况：负数与负数相加，或者正数与负数相加，其和为正数。执行两次求溢出运算，再将其相加即可。

核心代码：`int firstOverflow = (((x & y) | ((x ^ y) & ~first_sum)) >> 31) & 0x1; `

14. `logicalShift`

要求：使用逻辑右移将 x 向右移动 n 位。

逻辑右移受到符号位的影响，故可以将符号位保存下来后将其置为 0，执行算术右移，随后补上符号位。

15. `partialFill`

要求：给定 l 和 h，将区间 [l, h] 内的所有偶数位数字（下标从0开始）填充为1。

只需要准备一个偶数位为 1 的二进制模式，再得到 [0, h] 和 [l, 31]为 1 的掩码即可。

16. `float_abs`

要求：返回浮点参数 f 的绝对值 |f| 的位级等效表示。

先对特殊值 `NaN` 进行处理，接着就可以统一将符号位置为 0 即可满足要求。对浮点数的处理大多需要对特殊值，规格化数和非规格化数分别处理。

17. `float_abs`

要求：如果 uf1 大于 uf2，则返回 1，否则返回 0。当任何一个参数是 NaN 时，返回 0。

同样先对 NaN 进行处理。接着按照符号位的情况进行处理。如果符号位均为正，返回 `uf1 > uf2`，如果符号位均为负，返回 `uf1 < uf2`。如果符号位不同，则返回 uf2 的符号位即可，另外还需要特殊处理 0x0 与 0x80000000 的情况。虽然符号不同但他们相等。

18. `float_pow2`

要求：返回浮点参数 f 和整数参数 n 的表达式 f * (2^n) 的位级等效表示。当参数是 NaN 时，返回参数。

先处理特殊值。实际上正无穷、负无穷和 `NaN` 都可以直接返回参数。

由于规格化的数和非规格化数乘以 2 的位级操作不同，分别是阶码加 1 和尾码左移 1 位，故需要先处理非规格化的数。如果可以，将其处理成规格化的数便于下一步操作。

对于规格化的数，只需要判断最后的阶码是否超过了上限即可。

核心代码：
```c
  sign = 0x80000000 & uf;
  // 对非格式化的数进行处理
  if (!(0x7f800000 & uf))
  {
  // 若还没有成为格式化的数且未得到最终结果
    while (!((0x00800000) & uf) && n)
    {
      uf <<= 1;
      --n;
    }
    if (n == 0)
      return sign | uf;
  }
  // 至此，非格式化的数已经变为格式化的数，接下来按格式化数处理
  exp = (uf >> 23) & 0xff;
  //  超过最大表示范围
  if (exp + n >= 0xff)
    return sign | 0x7f800000;
  else
    return sign | ((exp + n) << 23) | (uf & 0x807fffff);
```

19. `float_i2f`

要求：返回整型参数 x 的强制类型转换为浮点数的位级等效表示。

对于非 0 的数，整数均为规格化表示，故首先要确定最高位。另外也需要对负数取反以便进行浮点数的正负表示。由此可以知道需要对 0 和 0x80000000 进行特殊处理。

转换为正数后很容易能够找到它的最高位，并由此得到阶码以及尾码。

需要注意的是，如果最高位超过 23 位，则需要修约。修约遵循 CSAPP 上面的规则：若需约分的部分为 `x`，`x > 0.5` 则进 1，`x < 0.5` 则舍去，如果 `x == 0.5`, 则进位应使它前面一位为偶数（二进制下即为 `0`）。这里的 `0.5` 指中间值。浮点数标准使得舍入可以直接对位表示加 1 而无需考虑是否需要对阶码做处理。

20. `oddParity`

要求：返回 x 的奇校验位，即 x 二进制表示中 1 的个数为偶数时返回 1，否则返回 0。

本题如果逐位检查当前位是否为 1 则会超出操作数限制，因此考虑将奇偶信息压缩。

从另一个角度来考察 1 和 0 的意义：1 表示该位上“储存”了 奇数个 1， 0 表示该位上“储存”了偶数个 1。容易发现可以用异或运算来实现 1 的数目的奇偶性的运算。` 1 ^ 1 = 0 1 ^ 0 = 1 0 ^ 0`

这样就可以通过 5 次运算将 32 位的奇偶性信息压缩到 1 位。最后检测第 0 位即可。

核心代码：
```c
  x = x ^ (x >> 16);
  x = x ^ (x >> 8);
  ...
  x = x ^ (x >> 1);
  return (x & 0x1) ^ 0x1;
```

21. `bitReverse`

要求：反转一个32位整数的二进制位。

同样的，本题如果逐位反转，则会超出操作数限制。考虑分治的思想：如果想要32 位进行反转，则要求前后两个 16 位的内部已经完成了反转；如果想要 16 位进行反转，则要求前后两个 8 位的内部已经完成了反转。依次类推。故可以按照 1，2，4，8，16 的数量进行反转。

另外，需要通过异或实现 10 个操作数得到 5 个掩码，否则操作数数量会超出限制。

核心代码：
```c
  // int monoMask = 0x55555555;
  // int dualMask = 0x33333333;
  // int quadMask = 0x0f0f0f0f;
  // int octMask = 0x00ff00ff;
  // int hexMask = 0x0000ffff; 
  x = ((x >> 1) & monoMask) | ((x & monoMask) << 1);
  x = ((x >> 2) & dualMask) | ((x & dualMask) << 2);
  ...
```

22. `mod7`
    
要求：计算 x 除以 7 的余数，但不使用 % 运算符。

注意到 7 = 8 - 1，可以考虑每次舍弃 7 的倍数，最终来实现 mod 7.

设有 `x = 8 * i + j`，令 `x = i + j`，即可做到舍弃 7 的倍数。最终得到的 `j` 的范围为 [0, 7]，需要进行处理来去掉 7 以及恢复正负号。 

需要注意 `0x80000000` 在取绝对值过后仍然为 `0x80000000`，对运算会造成影响。考虑对负数统一加7， 可以验证即使对于 -7 ~ -1 的负数最终结果也是正确的。

这是因为这个算法对于负数也是有效的，但最终结果为正数。故需要在一开始进行符号判断并取绝对值。

核心代码：
```c
  x = x + (sign & 0x7);
  absX = (x ^ sign) + (~sign + 1);

  absX = (absX >> 3) + (absX & 0x7);
  absX = (absX >> 3) + (absX & 0x7);
  ...

  tmp = absX + ~0x7 + 1;
  // 若 absX = 7, sumSign = 0
  // 若 absX != 7, sumSign = -1;
  sumSign = tmp >> 31;
  absX = absX & sumSign;
  // 恢复正负
  absX = (absX ^ sign) + (~sign + 1);
```
------
### References
[1] https://zhuanlan.zhihu.com/p/37175153

------
### 对本实验的感受
不愧是大名鼎鼎的 CSAPP 的 lab，难度梯度合理，对位操作的不少用法也做了引导和发掘，尤其是对浮点数编码的知识进行了巩固。总而言之，学到很多。