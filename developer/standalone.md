# standalone

本节简单介绍 `standalone` 中生成的可执行文件都是怎么用的，就不解释编程的逻辑了，感兴趣的见代码。其内现在可用的有8个程序：`syntax_tree`、`compare`、`standardize`、`convert`、`config`、`scaler/scaler`、`scaler/scaler_server`、`scaler/scaler_client`。

## syntax_tree

实现在 `standalone/syntax_tree.cpp` 中，用到了 syntax 库。

这个在[syntax 库](syntax.md#总结)一节提到过，这个程序用来展示输入的逻辑表达式解析出来的语法分析树。

```bash
$ ./bin/syntax_tree
(var0 & var1) | var2
S1
├─S1
│ └─S2
│   ├─(
│   ├─S1
│   │ ├─S1
│   │ │ └─S2
│   │ │   └─var0
│   │ ├─&
│   │ └─S2
│   │   └─var1
│   └─)
├─|
└─S2
  └─var2
```



## compare

实现在 `standalone/compare_logical_expression.cpp`中，用到了 syntax 库。

这个在[syntax 库](syntax.md#比较逻辑表达式)一节中暗示了，就是用来比较两个逻辑表达式是否等价的。

```bash
$ ./bin/compare
(A & B) | C
(A | C) & (B | C)
YES


$ ./bin/compare
(A & B) | A
A
YES


$ ./bin/compare
(A & B) | C
(A | C) & (B | D)
NO
```



## standardize

实现在 `standalone/standard_logic_adapter.cpp`，用到了 syntax 和 standarize 库。

这个在[standardize 库](standardize.md#总结)一节中提到过，用来标准形式的逻辑表达式是什么样的。

```bash
$ ./bin/standardize
((A|B|C)&(D|E|F)) | ((A|D|G)&H) | ((B|H|I)&(J|K|L))
(B | D | E | F | H | I) & (A | B | C | H | I) & (A | B | C | H | J | K | L) & (D | E | F | H | J | K | L) & (A | B | C | D | G | J | K | L) & (A | D | E | F | G | J | K | L)
```



## convert

实现在 `standalone/convert.cpp` 中，用到了 sytnax、stadnardize 和 config 库。

这个在[进阶使用](../user-guide/advanced.md#两步配置)中提到，就是用来从高级配置文件产生低级配置文件的。所谓高级配置文件，就是应用[配置语法](../user-guide/config-syntax.md)的规则的配置文件，比如说 `examples/example_logic_0.txt`就是高级配置文件。所谓低级配置文件，就是和 FPGA 内存高度相关的配置文件，里面都是文本形式的十六进制数。

```bash
$ ./bin/convert examples/example_logic_0.txt example_memory_0.txt
```

如上运行程序即可得到名为 `example_memory_0.txt` 的低级配置文件，因为这个文件太长，我就放在[附录](#低级配置文件)了。这个就是那种一般人看不懂的东西。细心的人可能发现这个项目版本已经是2.0了，那么版本1.0其实就是只能读取低级配置文件的项目。考虑到配置过于困难，才有这个项目的出现。



## config

实现在 `standalone/config.cpp`中，用到了 syntax、standardize 和 config 库。

这个在[快速开始](../user-guide/quick-start.md#使用)和[进阶使用](../user-guide/advanced.md#两步配置)中提到，就是读取高级配置文件或者低级配置文件来写 FPGA的，如果你只是想让 FPGA 能跑，那么只跑这个程序就足够了。

```bash
# 读取高级配置文件
$ ./bin/config -l examples/example_logic_0.txt
# 读取低级配置文件
$ ./bin/config example_memory_0.txt
# 或者
$ ./bin/config -r example_memory_0.txt
```

由于输出很长，上面省略了输出的内容，可以在[附录](#运行config)查看读取高级配置文件的输出内容。



## scaler

实现在 `standalone/scaler/scaler.cpp`。

这个在[进阶使用](../user-guide/advanced.md#定标器)中提到过。这个程序是粗糙的移植，我从1.0版本里复制过来就改了改，但是能跑。

```bash
$ ./bin/scaler
```

运行时没有花里胡哨的参数，直接跑就是了。



## scaler_server

定义和实现在`standalone/scaler/scaler_defs.h` 和  `standalone/scaler/scaler_server.cpp` 中。

这个在[进阶使用](../user-guide/advanced.md#定标器)中提到过，这里就不重复介绍了，记得它是在 zynq 的系统里跑的并设置端口号就行。默认是每4秒记录一次定标器数值，可以自己在头文件里面更改 `kRecordPeriod`来改变记录时间间隔，单位是秒。

```bash
$ ./bin/scaler_server 12306
```





## scaler_client

定义和实现在`standalone/scaler/scaler_defs.h` 和  `standalone/scaler/scaler_client.cpp` 中。

这个在[进阶使用](../user-guide/advanced.md#定标器)中提到过，这里就不重复介绍了。它可以在 zynq 的系统里跑，但我觉得正确的用法是在另一台更好的机器里跑。需要输入 zynq 的 ip 地址和服务端设置的端口。默认是服务端每4秒记录一次定标器数值，客户端积累8次的记录（即32秒）再向客户端请求这堆数据。可以修改头文件中的 `kRecordPeriod` 来更改记录时间间隔，单位为秒。修改头文件中的 `kScalerStackSize` 来修改记录的积累数量，单位是个。

```bash
$ ./bin/scaler_client 192.168.1.108 12306
```

程序运行后默认将数据输出到运行目录，可以通过输入参数来改变，详见[进阶使用](../user-guide/advanced.md#定标器)。



## 附录

### 低级配置文件

[回到 convert](#convert)

```bash
$ cat eample_memory_0.txt
0x0000 0x0000 0x6666
0x0000 0x0000 0x6660
0x0000 0x0000 0x0000
0x0000 0x0000 0x0000

0x00 0x00 0x00 0x00
0x00 0x00 0x00 0x00
0x00 0x00 0x00 0x00
0x00 0x00 0x00 0x00

0x00 0x00 0x00 0x00
0x00 0x00 0x00 0x00
0x00 0x00 0x00 0x00
0x00 0x00 0x00 0x00

0x00 0x00 0x00 0x00
0x00 0x21 0x22 0x00
0x00 0x61 0x62 0x00
0x00 0x68 0x69 0x00

0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0
0x0000 0x0000 0x0000 0

0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000

0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000
0x0000 0x0000 0x0000 0x0000 0x0000

0 0x00

0x70 100000000
0x70 25000
0x70 100000
0x70 1
0x21 5
0x00 1
0x00 1
0x00 1

1 0x4 0x21 1 0x4 0x22
0 0x0 0x00 0 0x0 0x00
0 0x0 0x00 0 0x0 0x00
0 0x0 0x00 0 0x0 0x00

0x21 0x0 0x22 0x0
0x2d 0x0 0x2e 0x0
0x64 0x0 0x00 0x0
0x00 0x0 0x00 0x0
0x00 0x0 0x00 0x0
0x00 0x0 0x00 0x0
0x00 0x0 0x00 0x0
0x00 0x0 0x00 0x0
0x00 0x0 0x00 0x0
0x00 0x0 0x00 0x0
0x00 0x0 0x00 0x0
0x00 0x0 0x00 0x0
0x00 0x0 0x00 0x0
0x00 0x0 0x00 0x0
0x00 0x0 0x00 0x0
0x00 0x0 0x00 0x0
```

[回到 convert](#convert)



### 运行config

[回到 config](#config)

```bash
$ ./bin/config -l examples/example_logic_0.txt
0x0000 0x0000 0x6666                  rj45 enable A, B, C
0x0000 0x0000 0x6660                  pl out enable A, B, C
0x0000 0x0000 0x0000                  front input inverse A, B, C
0x0000 0x0000 0x0000                  front output inverse A, B, C

0x00 0x00 0x00 0x00                   front io source A0-A3
0x00 0x00 0x00 0x00                   front io source A4-A7
0x00 0x00 0x00 0x00                   front io source A8-A11
0x00 0x00 0x00 0x00                   front io source A12-A15
0x00 0x00 0x00 0x00                   front io source B0-B3
0x00 0x00 0x00 0x00                   front io source B4-B7
0x00 0x00 0x00 0x00                   front io source B8-B11
0x00 0x00 0x00 0x00                   front io source B12-B15
0x00 0x00 0x00 0x00                   front io source C0-C3
0x00 0x21 0x22 0x00                   front io source C4-C7
0x00 0x61 0x62 0x00                   front io source C8-C11
0x00 0x68 0x69 0x00                   front io source C12-C15

0x0000 0x0000 0x0000 0                multi 0 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 1 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 2 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 3 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 4 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 5 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 6 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 7 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 8 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 9 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 10 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 11 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 12 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 13 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 14 front A, B, C selections and threshold
0x0000 0x0000 0x0000 0                multi 15 front A, B, C selections and threshold

0x0000 0x0000 0x0000 0x0000           or gate 0 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 1 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 2 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 3 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 4 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 5 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 6 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 7 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 8 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 9 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 10 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 11 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 12 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 13 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 14 front A, B, C and multi selections
0x0000 0x0000 0x0000 0x0000           or gate 15 front A, B, C and multi selections

0x0000 0x0000 0x0000 0x0000 0x0000    and gate 0 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 1 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 2 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 3 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 4 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 5 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 6 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 7 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 8 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 9 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 10 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 11 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 12 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 13 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 14 front A, B, C, multi and or gates selections
0x0000 0x0000 0x0000 0x0000 0x0000    and gate 15 front A, B, C, multi and or gates selections

0 0x00                                back enable and source

0x70 100000000                        divider 0 source selection and divisor
0x70 25000                            divider 1 source selection and divisor
0x70 100000                           divider 2 source selection and divisor
0x70 1                                divider 3 source selection and divisor
0x21 5                                divider 4 source selection and divisor
0x00 1                                divider 5 source selection and divisor
0x00 1                                divider 6 source selection and divisor
0x00 1                                divider 7 source selection and divisor

1 0x4 0x21 1 0x4 0x22                 divider gate 0, 1 operators, sources and the other sources
0 0x0 0x00 0 0x0 0x00                 divider gate 2, 3 operators, sources and the other sources
0 0x0 0x00 0 0x0 0x00                 divider gate 4, 5 operators, sources and the other sources
0 0x0 0x00 0 0x0 0x00                 divider gate 6, 7 operators, sources and the other sources

0x21 0x0 0x22 0x0                     scaler 0, 1 sources and clock sources
0x2d 0x0 0x2e 0x0                     scaler 2, 3 sources and clock sources
0x64 0x0 0x00 0x0                     scaler 4, 5 sources and clock sources
0x00 0x0 0x00 0x0                     scaler 6, 7 sources and clock sources
0x00 0x0 0x00 0x0                     scaler 8, 9 sources and clock sources
0x00 0x0 0x00 0x0                     scaler 10, 11 sources and clock sources
0x00 0x0 0x00 0x0                     scaler 12, 13 sources and clock sources
0x00 0x0 0x00 0x0                     scaler 14, 15 sources and clock sources
0x00 0x0 0x00 0x0                     scaler 16, 17 sources and clock sources
0x00 0x0 0x00 0x0                     scaler 18, 19 sources and clock sources
0x00 0x0 0x00 0x0                     scaler 20, 21 sources and clock sources
0x00 0x0 0x00 0x0                     scaler 22, 23 sources and clock sources
0x00 0x0 0x00 0x0                     scaler 24, 25 sources and clock sources
0x00 0x0 0x00 0x0                     scaler 26, 27 sources and clock sources
0x00 0x0 0x00 0x0                     scaler 28, 29 sources and clock sources
0x00 0x0 0x00 0x0                     scaler 30, 31 sources and clock sources
```

[回到 config](#config)