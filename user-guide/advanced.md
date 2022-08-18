# 进阶使用

## 两步配置

除了[快速开始](quick-start.md#使用)所提到的一步到位的配置方式，还可以选择两步配置的方式。实际上在配置过程中，程序会将配置文件中的表达式转化成直接写 FPGA 内存的低级配置文件，该低级配置文件和 FPGA 内部的设置息息相关，适合有经验的人进一步调试使用。一般的两步方式如下

```bash
# 从高级配置文件产生低级配置文件
$ ./convert example_logic_0.txt example_memory_0.txt
# 读取配置文件配置 FPGA
$ ./config example_memory_0.txt
```

即先根据包含逻辑表达式的高级配置文件产生中间的低级配置文件，随后依然运行 `config` 程序配置 FPGA 芯片，此时省略 `-l` 参数。

同时，考虑到 `easy-config-logic` 项目编译时间不短，在 zynq7020 的系统内可以考虑使用另一个项目[easy-config-logic-c](https://github.com/kinstaky/easy-config-logic-c)，该项目只能使用低级配置文件进行配置，所以需要在另一台机器中产生低级配置文件后再复制到 zynq7020 的系统中。



## 定标器

所谓定标器（scaler），即统计信号频率的模块。在配置文件中写好定标器定义后，FPGA 配置好后会将被检测信号的频率记录在内存中，运行程序即可读取

```bash
$ ./scaler
```

如此，程序将在屏幕中打印所有定标器记录的信号频率，单位 Hz，该值每秒刷新一次。如果定标器未定义，则会显示频率为1Hz。按Ctrl+C退出程序。

考虑到可能需要对定标器的值进行记录，本项目另外提供了两个程序以记录定标器内容。第一个程序是 `scaler_server`，它运行在 zynq7020 的系统中

```bash
$ ./scaler_server -h
Usage: ./scaler_server  port [log file] [log level]
  port         Set the listening port.
  log file     Set the log file path, do not log if not set.
  log level    Set the log level: error, warning, info, debug, default is warning.
```

该程序将在读取定标器值同时作为服务端，等待客户端程序请求数据，输入入Ctrl+C 退出程序。

+ `port` 服务端的监听端口，必须设置
+ `log file` 日志文件的路径，不设置时不记录日志
+ `log level` 日志记录内容，error 只记录错误信息，warning 记录错误和警告信息，如此类推，默认值 warning

第二个程序是客户端程序，可以在 zynq7020 的系统中运行，但更推荐在正经的 pc 中运行，运行方法

```bash
$ ./scaler_client -h                                                                                                                     
Usage: ./scaler_client [options] host port [data path] [log file] [log level]
Options:
  -t           Record scaler values in text(in binary default).
  -h           Print this help information.
  host         Set the host to connect to, necessary.
  port         Set the port to connect to, necessary.
  data path    Set the path to record data and time, default is this directory(.).
  log file     Set the log file path, do not log if not set.
  log level    Set the log level: error, warning, info or debug, default is warning.
```

该程序将向服务端程序请求定标器记录的数据，并保存在文件中，输入入Ctrl+C 退出程序。

+ `-t` 将数据保存为可阅读的文本格式，默认为二进制格式
+ `-h` 打印帮助信息
+ `host` 服务端的地址，必须设置
+ `port` 服务端监听端口，必须设置，与服务端设置的保持一致
+ `data path` 数据文件路径，默认为程序运行目录，记录的数据将以天为单位划分，即一天一个文件，比如2022年6月1日记录的数据将保存在 20220601.txt 或 20220601.bin 中
+ `log file` 日志文件的路径，不设置时不记录日志
+ `log level` 日志记录内容，error 只记录错误信息，warning 记录错误和警告信息，如此类推，默认值 warning



注意：运行上述两个程序的系统时间必须晚于2022年6月1日 00:00，否则可能会发生未知错误。
