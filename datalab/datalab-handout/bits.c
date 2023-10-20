/* 
 * CS:APP Data Lab 
 * 
 * <Please put your name and userid here>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically. （执行算术右移）
  3. Has unpredictable behavior when shifting if the shift amount
     is less than 0 or greater than 31.


EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implement floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants. You can use any arithmetic,
logical, or comparison operations on int or unsigned data.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operations (integer, logical,
     or comparison) that you are allowed to use for your implementation
     of the function.  The max operator count is checked by dlc.
     Note that assignment ('=') is not counted; you may use as many of
     these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
#include "bits.h"

//P1
/* 
 * tconst - return a constant value 0xFFFFFFE0
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 2
 *   Rating: 1
 */
int tconst(void) {
  // 注意到 0xFFFFFFE0 = !0x1F, 且 0x1F < 255,考虑取反
	return ~0x1F;
}

//P2
/* 
 * bitNand - return ~(x&y) using only ~ and | 
 *   Example: bitNand(4, 5) = -5, bitNand(3, 11) = -4
 *   Legal ops: ~ |
 *   Max ops: 6
 *   Rating: 2
 */
int bitNand(int x, int y) {
  // 由De Morgan定律知 ~(x & y) = ~x | ~y
  return ~x | ~y;
}

//P3
/*
 * ezOverflow - determine if the addition of two signed positive numbers overflows,
 *      and return 1 if overflowing happens and 0 otherwise
 *   You can assume 0 <= x, 0 <= y
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int ezOverflow(int x,int y) {
  // 对于 signed int，最高位为符号位。如果溢出则符号位变为 1
  // 且两个 singed int 相加的最大值不会使符号位也溢出，故检测符号位即可
	return ((x + y) >> 31) & 0x1;
}

//P4
/* 
 * fastModulo - return x%(2^y)
 *   You can assume 0 <= x, 1 <= y <= 31
 *   Example: fastModulo(0x1234567,0xA) = 0x167
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 3
 */
int fastModulo(int x,int y) {
  // 注意到是对 2^y 取模，与 32 位系统上 x = x mod 2^32 类似
  // 只保留 x 的前 y 位即可. 
	return ((0x1 << y) + ~0x0) & x;
}

//P5
/*
 * findDifference - return a mask that marks the different bits of y compared to x
 *   Example: findDifference(12, 10) = findDifference(10, 12) = 6
 *   Legal ops: ~ & |
 *   Max ops: 9
 *   Rating: 3
 */
int findDifference(int x,int y) {
  //即需要用 ~ 和 | 来实现异或
  // a ^ b = (~a & b) | (a & ~b) = ~(a | ~b) | ~(~a | b) (De Morgan 定律) 
	return ~(x | ~y) | ~(~x | y);
}

//P6
/*
 * absVal - return the absolute value of x
 *   Examples: absVal(-10) = 10
 *			   absVal(5) = 5
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 4
 */
int absVal(int x) {
  // 输出结果与正负号相关，考虑利用符号位进行操作. 又注意到限制右移为算术右移
  // 利用右移进行操作
  int sign = x >> 31;
  return (x ^ sign) + (sign & 0x1);
}

//P7
/*
 * secondLowBit - return a mask that marks the position of the second least significant 1 bit.
 *   Examples: secondLowBit(0x00000110) = 0x00000100
 *			       secondLowBit(0xFEDC1A80) = 0x00000200
 *             secondLowBit(0)  = 0
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 4
 */
int secondLowBit(int x) {
  // 首先考虑最低有效位的情况。
  // 可以证明 x & -x 能够得到最低有效位, 计算两次最低有效位即可
  int firstLowBit = x & (~x + 1);
  int clearFLB = x & ~firstLowBit;
	return clearFLB & (~clearFLB + 1);
}

//P8
/*
 * byteSwap - swaps the nth byte and the mth byte
 *  Examples: byteSwap(0x12345678, 1, 3) = 0x56341278
 *            byteSwap(0xDEADBEEF, 0, 2) = 0xDEEFBEAD
 *  You may assume that 0 <= n <= 3, 0 <= m <= 3
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 20
 *  Rating: 5
 */
int byteSwap(int x, int n, int m) {
  //考虑首先获取要交换的字节
  //之后再通过掩码修改 x
  int nbyte = (x >> (n << 3)) & 0xFF;
  int mbyte = (x >> (m << 3)) & 0xFF;
  int tmp = nbyte;
  nbyte = mbyte;
  mbyte = tmp;
  x = x & ~(0xFF << (n << 3)) & ~(0xFF << (m << 3));
  x = x | (nbyte << (n << 3)) | (mbyte << (m << 3));
	return x;
}
//P9
/* 
 * byteCheck - Returns the number of bytes that are not equal to 0
 *   Examples: byteCheck(0xFE0A4100) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 5
 */
int byteCheck(int x) {
  // 由于这题提供了 ! 运算符，依次获取字节取反即可
  int byte;
  int cnt = 0;
  byte = 0xFF & x;
  cnt = cnt + !(!byte);
  byte = 0xFF & (x = x >> 8);
  cnt = cnt + !(!byte);
  byte = 0xFF & (x = x >> 8);
  cnt = cnt + !(!byte);
  byte = 0xFF & (x = x >> 8);
  cnt = cnt + !(!byte);
  return cnt;
}

//P10
/* 
 * fractions - return floor(x*7/16), for 0 <= x <= (1 << 28), x is an integer 
 *   Example: fractions(20) = 8
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 5
 */
int fractions(int x) {
  // 注意到 7/16 比较特殊，可以分解为 (8 - 1) / 16 和 (4 + 2 + 1) / 16
  // 结合x的范围可知可以用移位来代替乘法
  return ((x << 3) + ~x + 1) >> 4;
}

//P11
/* 
 * biggerOrEqual - if x >= y  then return 1, else return 0 
 *   Example: biggerOrEqual(4,5) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 6
 */
int biggerOrEqual(int x, int y) {
  // 考虑比较 x - y >= 0. 只用考虑符号位即可。但是这种情况下可能溢出，需要考虑溢出的情况。
  // x，y 一正一负时，有可能溢出。若不溢出，按正常情况处理。
  // 若溢出，返回取反后的 x 的符号位。
  // x，y 同号时，不会溢出，按正常情况处理。
  int sub = x + (~y + 1);
  int sign = sub >> 31;

  // 判断是否溢出：x，y 异号且 x，sub 异号
  // 若溢出， overflow = 0xFFFFFFFF,不溢出， overflow = 0
  int overflow = ((x ^ y) & (x ^ sub)) >> 31;
  return (((overflow & ~x) | (~overflow & ~sign)) >> 31) & 0x1;

}


//P12
/*
 * hdOverflow - determine if the addition of two signed 32-bit integers overflows,
 *      and return 1 if overflowing happens and 0 otherwise
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 6
 */
int hdOverflow(int x,int y) {
  // 正溢出：x > 0 && y > 0 ，而 x + y < 0;
  // 负溢出：x < 0 && y < 0 . 而 x + y >= 0;
  int sum = x + y;
	return (((~(x ^ y)) & (sum ^ x)) >> 31) & 0x1;
}

//P13
/* 
 * overflowCalc - given binary representations of three 32-bit positive numbers and add them together, 
 *      return the binary representation of the part where bits are higher than 32.
 *   Examples: overflowCalc(0xffffffff,0xffffffff,0xffffffff) = 2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 30
 *   Rating: 7
 */
int overflowCalc(int x, int y, int z) {
  // 负数 + 正数 = 负数：非溢出
  // 负数 + 正数 = 正数：溢出
  // 负数 + 负数 溢出 (负数)
  // 正数 + 正数 不溢出 (正数)
  // 溢出条件为：均为负数 或 一个正数一个负数，结果为正数
  int first_sum = x + y;
  int firstOverflow = (((x & y) | ((x ^ y) & ~first_sum)) >> 31) & 0x1; 
  int second_sum = first_sum + z;
  int secondOverflow = (((z & first_sum) | ((z ^ first_sum) & ~second_sum)) >> 31) & 0x1;
  return secondOverflow + firstOverflow;
}

//P14
/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 8
 */
int logicalShift(int x, int n) {
  //  逻辑右移受到符号位的影响，故可以将符号位保存下来后
  //  将符号位置为 0，执行算术右移，随后补上符号位
  int sign = (x >> 31) & 0x1;
  int int_min = 1 << 31;
  int tmp = x & ~int_min;
  tmp >>= n;
  return tmp | (sign << (32 + ~n));
}

//P15
/* 
 * partialFill - given l, h, fill all even digits within the [l, h] interval with 1 (subscripts starting from 0)
 *   Can assume that 0 <= l <= 15, 16 <= h <= 31
 *   Examples: partialFill(13,16) = 0x00014000
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 8
 */
int partialFill(int l, int h) {
  // 本题要求范围 [l, h] 范围内偶数位为 1 的二进制模式。注意这里的最低位为第 0 位
  // 只需要准备一个偶数位为 1 的二进制模式，再用掩码即可
  int evenBits = 0x55;
  int lMask, hMask;
  evenBits = evenBits | (evenBits << 8);
  evenBits = evenBits | (evenBits << 16);
  lMask = ~((0x1 << l) + ~0);
  hMask = (((0x1 << h) + ~0) << 1) + 1;
  
  return evenBits & (lMask & hMask);
}

//P16
/* 
 * float_abs - Return bit-level equivalent of expression |f| (absolute value of f) for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 20
 *   Rating: 3
 */
unsigned float_abs(unsigned uf) {
  // 浮点数的首位为符号位，将其置为 0 即可
  // 需要对 NaN 进行特殊处理
  unsigned sign = 0x80000000;
  unsigned exp = 0x7f800000;
  unsigned decimal = 0x007fffff;
  if (((uf & exp) == exp) && ((uf & decimal) != 0))
    return uf;
  
  return uf & ~sign;
}

//P17
/* 
 * float_cmp - Return 1 if uf1 > uf2, and 0 otherwise.
 *   Both of the arguments are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When ant of the arguments is NaN, return 0.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 40
 *   Rating: 5
 */
unsigned float_cmp(unsigned uf1, unsigned uf2) {
  // 首先处理 NaN 的情况
  // 然后处理符号位不相同的情况。注意 0x00000000 与 0x80000000
  // 最后处理符号位相同的情况，可直接按 int 比较
  unsigned exp = 0x7f800000;
  unsigned decimal = 0x007fffff;
  unsigned withoutSign = 0x7fffffff;
  if ((exp & uf1) == exp && (uf1 & decimal)) 
    return 0;
  if ((exp & uf2) == exp && (uf2 & decimal))
    return 0;

  if ((uf1 >> 31) ^ (uf2 >> 31))
  {
    // 若不为 0x00000000 与 0x80000000 且 uf1 的符号位为 0 
    return ((uf1 & withoutSign) || (uf2 & withoutSign)) && !(uf1 >> 31);
  }
  else
  {
    // 根据符号位进行修正
    return uf1 >> 31 ? uf1 < uf2 : uf1 > uf2;
  }

}

//P18
/* 
 * float_pow2 - Return bit-level equivalent of expression f*(2^n) for
 *   floating point argument f and integer argument n.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument.
 *   You can assume 0 <= n <= 255
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 50
 *   Rating: 6
 */
unsigned float_pow2(unsigned uf,int n) {

  int exp;
  unsigned sign;
  // 处理特殊值
  if ((uf & 0x7f800000) == 0x7f800000)
    return uf;
    
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
  {
    return sign | 0x7f800000;
  }
  else
  {
    return sign | ((exp + n) << 23) | (uf & 0x807fffff);
  }
}


//P19
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 40
 *   Rating: 7
 */
unsigned float_i2f(int x) {
  // int 的二进制存储方式为我们提供了整数的二进制表示
  unsigned sign = 0x80000000 & x;
  unsigned M, roundingBit;
  int target, exp;
  //i 表示位数时为 2^i 中的 i
  int i = -1;
  int tmp;
  
  // 找不到最高位的 1，特殊处理
  if (x == 0)
    return 0;
  // 由于不允许类型转换，取反后仍然是负数，执行右移的时候会算术右移，也要特殊处理
  else if (x == 0x80000000)
    return 0xcf000000;
  
  target = sign ? -x : x;
  tmp = target;
  while (tmp)
  {
    ++i;
    tmp >>= 1;
  }  
  M = ((0x1 << i) + ~0) & target;
  M = M << (31 - i);
  exp = 127 + i;
  // 若最高位超过 23 位，需要修约
  if (i > 23)
  {
    roundingBit = 0xff & M;
    if (roundingBit > 0x80)
    {
      return (sign | (exp << 23) | (M >> 8)) + 1;
    }
    else if(roundingBit < 0x80)
    {
      return (sign | (exp << 23) | (M >> 8));
    }
    else
    {
      return (sign | (exp << 23) | (M >> 8)) + (0x1 & (M >> 8));
    }
  }
  else
  {
    return (sign | (exp << 23) | (M >> 8));
  }
}


#ifdef NOT_SUPPOSED_TO_BE_DEFINED
#   __          __  _                          
#   \ \        / / | |                         
#    \ \  /\  / /__| | ___ ___  _ __ ___   ___ 
#     \ \/  \/ / _ \ |/ __/ _ \| '_ ' _ \ / _ \
#      \  /\  /  __/ | (_| (_) | | | | | |  __/
#       \/  \/ \___|_|\___\___/|_| |_| |_|\___|
#                                              

#  ██╗  ██╗ ██████╗ ███╗   ██╗ ██████╗ ██████╗     ██████╗  █████╗ ██████╗ ████████╗
#  ██║  ██║██╔═══██╗████╗  ██║██╔═══██╗██╔══██╗    ██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝
#  ███████║██║   ██║██╔██╗ ██║██║   ██║██████╔╝    ██████╔╝███████║██████╔╝   ██║   
#  ██╔══██║██║   ██║██║╚██╗██║██║   ██║██╔══██╗    ██╔═══╝ ██╔══██║██╔══██╗   ██║   
#  ██║  ██║╚██████╔╝██║ ╚████║╚██████╔╝██║  ██║    ██║     ██║  ██║██║  ██║   ██║   
#  ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝    ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   
#                                                                                   
#endif

//P20
/*
 * oddParity - return the odd parity bit of x, that is, 
 *      when the number of 1s in the binary representation of x is even, then the return 1, otherwise return 0.
 *   Examples:oddParity(5) = 1, oddParity(7) = 0
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 56
 *   Challenge: You will get 1 extra point if you use less than or equal to 34 ops
 *   Rating: 2
 */
int oddParity(int x) {
  // 需要对 32 个比特位的 1 的奇偶性进行计数 0
  // 注意到可以将两个位用一个位表示: 1 ^ 1 = 0 1 ^ 0 = 1 0 ^ 0
  // 即如果将每一个位单独考虑，1 表示这个位上“储存”了奇数个 1，0 表示“储存”了偶数个 1
  // 这样可以把 32 位的奇偶信息压缩至 1 位
  x = x ^ (x >> 16);
  x = x ^ (x >> 8);
  x = x ^ (x >> 4);
  x = x ^ (x >> 2);
  x = x ^ (x >> 1);
  return (x & 0x1) ^ 0x1;
}

//P21
/*
 * bitReverse - Reverse bits in an 32-bit integer
 *   Examples: bitReverse(0x80000004) = 0x20000001
 *             bitReverse(0x7FFFFFFF) = 0xFFFFFFFE
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 56
 *   Challenge: You will get 1 extra point if you use less than or equal to 34 ops
 *   Rating: 2
 */
int bitReverse(int x) {
  // 利用分治的思想。如果想把前一个字与后一个字对换，需要字的内部已经逆序
  // 那么在字的内部，需要对字节进行逆序
  // 最后可以知道由 1， 2， 4， 8， 16的进行交换即可/
  // int monoMask = 0x55555555;
  // int dualMask = 0x33333333;
  // int quadMask = 0x0f0f0f0f;
  // int octMask = 0x00ff00ff;
  // int hexMask = 0x0000ffff; 
  int monoMask, dualMask, quadMask, octMask, hexMask;
  hexMask = 0xff | (0xff << 8);
  octMask = hexMask ^ (hexMask << 8);
  quadMask = octMask ^ (octMask << 4);
  dualMask = quadMask ^ (quadMask << 2);
  monoMask = dualMask ^ (dualMask << 1);


  x = ((x >> 1) & monoMask) | ((x & monoMask) << 1);
  x = ((x >> 2) & dualMask) | ((x & dualMask) << 2);
  x = ((x >> 4) & quadMask) | ((x & quadMask) << 4);
  x = ((x >> 8) & octMask) | ((x & octMask) << 8);
  x = ((x >> 16) & hexMask) | (x << 16);



	return x;
}

//P22
/*
 * mod7 - calculate x mod 7 without using %.
 *   Example: mod7(99) = 1
 *            mod7(-101) = -3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 100
 *   Challenge: You will get 2 extra point if you use less than or equal to 56 ops
 *   Rating: 2
 */
int mod7(int x) {
  int sign = x >> 31;
  int absX,tmp,sumSign;
  x = x + (sign & 0x7);
  absX = (x ^ sign) + (~sign + 1);

  // absX = 8 * i + j -> absX = i + j
  // 手动循环来舍弃 7 的倍数
  absX = (absX >> 3) + (absX & 0x7);
  absX = (absX >> 3) + (absX & 0x7);
  absX = (absX >> 3) + (absX & 0x7);
  absX = (absX >> 3) + (absX & 0x7);
  absX = (absX >> 3) + (absX & 0x7);
  absX = (absX >> 3) + (absX & 0x7);
  absX = (absX >> 3) + (absX & 0x7);
  absX = (absX >> 3) + (absX & 0x7);
  absX = (absX >> 3) + (absX & 0x7);
  absX = (absX >> 3) + (absX & 0x7);
  absX = (absX >> 3) + (absX & 0x7);

  tmp = absX + ~0x7 + 1;
  // 若 absX = 7, sumSign = 0
  // 若 absX != 7, sumSign = -1;
  sumSign = tmp >> 31;
  absX = absX & sumSign;
  // 恢复正负
  absX = (absX ^ sign) + (~sign + 1);

  return absX;
}