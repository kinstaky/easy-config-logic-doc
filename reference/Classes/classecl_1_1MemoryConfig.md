---
title: ecl::MemoryConfig

---

# ecl::MemoryConfig






`#include <memory_config.h>`

## Public Classes

|                | Name           |
| -------------- | -------------- |
| struct | **[Memory](structecl_1_1MemoryConfig_1_1Memory.md)**  |

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[MemoryConfig](classecl_1_1MemoryConfig.md#function-memoryconfig)**()<br>Construct a new [Memory]() Config object.  |
| | **[~MemoryConfig](classecl_1_1MemoryConfig.md#function-~memoryconfig)**() =default<br>default destructor  |
| void | **[Clear](classecl_1_1MemoryConfig.md#function-clear)**()<br>clear the memory values  |
| int | **[Read](classecl_1_1MemoryConfig.md#function-read)**([LogicParser](Classes/classecl_1_1LogicParser.md) * parser)<br>read config from logic_parser  |
| int | **[Read](classecl_1_1MemoryConfig.md#function-read)**(const char * file)<br>read config from file  |
| int | **[TesterRead](classecl_1_1MemoryConfig.md#function-testerread)**([LogicParser](Classes/classecl_1_1LogicParser.md) * parser)<br>read config from logic_parser for tester  |
| int | **[Write](classecl_1_1MemoryConfig.md#function-write)**(const char * file) const<br>write config to file  |
| int | **[MapMemory](classecl_1_1MemoryConfig.md#function-mapmemory)**(volatile uint32_t * map) const<br>write register memory to the shared memory  |
| const [Memory](structecl_1_1MemoryConfig_1_1Memory.md) * | **[GetMemory](Classes/classecl_1_1MemoryConfig.md#function-getmemory)**() const<br>get the const pointer to memroy struct  |
| uint8_t | **[ConvertSource](classecl_1_1MemoryConfig.md#function-convertsource)**(size_t source) const<br>convert source index from [LogicParser](Classes/classecl_1_1LogicParser.md) to memroy selection  |

## Public Attributes

|                | Name           |
| -------------- | -------------- |
| const size_t | **[kFrontIoGroupNum](classecl_1_1MemoryConfig.md#variable-kfrontiogroupnum)**  |
| const size_t | **[kFrontIoGroupSize](classecl_1_1MemoryConfig.md#variable-kfrontiogroupsize)**  |
| const size_t | **[kFrontIoNum](classecl_1_1MemoryConfig.md#variable-kfrontionum)**  |
| const size_t | **[kFrontIoSelectionBits](classecl_1_1MemoryConfig.md#variable-kfrontioselectionbits)**  |
| const size_t | **[kMultiNum](classecl_1_1MemoryConfig.md#variable-kmultinum)**  |
| const size_t | **[kMultiThresholdBits](classecl_1_1MemoryConfig.md#variable-kmultithresholdbits)**  |
| const size_t | **[kMultiBits](classecl_1_1MemoryConfig.md#variable-kmultibits)**  |
| const size_t | **[kOrGateNum](classecl_1_1MemoryConfig.md#variable-korgatenum)**  |
| const size_t | **[kOrGateBits](classecl_1_1MemoryConfig.md#variable-korgatebits)**  |
| const size_t | **[kAndGateNum](classecl_1_1MemoryConfig.md#variable-kandgatenum)**  |
| const size_t | **[kAndGateBits](classecl_1_1MemoryConfig.md#variable-kandgatebits)**  |
| const size_t | **[kBackEnableBits](classecl_1_1MemoryConfig.md#variable-kbackenablebits)**  |
| const size_t | **[kBackSelectionBits](classecl_1_1MemoryConfig.md#variable-kbackselectionbits)**  |
| const size_t | **[kDividerNum](classecl_1_1MemoryConfig.md#variable-kdividernum)**  |
| const size_t | **[kDividerSelectionBits](classecl_1_1MemoryConfig.md#variable-kdividerselectionbits)**  |
| const size_t | **[kDivider_DivisorBits](classecl_1_1MemoryConfig.md#variable-kdivider-divisorbits)**  |
| const size_t | **[kDividerGateNum](classecl_1_1MemoryConfig.md#variable-kdividergatenum)**  |
| const size_t | **[kOperatorTypeBits](classecl_1_1MemoryConfig.md#variable-koperatortypebits)**  |
| const size_t | **[kDividerGate_DivderSourceSelectionBits](classecl_1_1MemoryConfig.md#variable-kdividergate-divdersourceselectionbits)**  |
| const size_t | **[kDividerGate_OtherSourceSelectionBits](classecl_1_1MemoryConfig.md#variable-kdividergate-othersourceselectionbits)**  |
| const size_t | **[kDividerGateBits](classecl_1_1MemoryConfig.md#variable-kdividergatebits)**  |
| const size_t | **[kScalerNum](classecl_1_1MemoryConfig.md#variable-kscalernum)**  |
| const size_t | **[kScalerSourceSelectionBits](classecl_1_1MemoryConfig.md#variable-kscalersourceselectionbits)**  |
| const size_t | **[kScalerClockSelectionBits](classecl_1_1MemoryConfig.md#variable-kscalerclockselectionbits)**  |

## Friends

|                | Name           |
| -------------- | -------------- |
| std::ostream & | **[operator<<](classecl_1_1MemoryConfig.md#friend-operator<<)**(std::ostream & os, const [MemoryConfig](Classes/classecl_1_1MemoryConfig.md) & config) <br>print the memory  |

## Public Functions Documentation

### function MemoryConfig

```cpp
MemoryConfig()
```

Construct a new [Memory]() Config object. 

### function ~MemoryConfig

```cpp
~MemoryConfig() =default
```

default destructor 

### function Clear

```cpp
void Clear()
```

clear the memory values 

### function Read

```cpp
int Read(
    LogicParser * parser
)
```

read config from logic_parser 

**Parameters**: 

  * **parser** pointer to logic parser 


**Return**: 0 on suceess, -1 on failure 

### function Read

```cpp
int Read(
    const char * file
)
```

read config from file 

**Parameters**: 

  * **file** name of file to read 


**Return**: 0 on success, -1 on failure 

### function TesterRead

```cpp
int TesterRead(
    LogicParser * parser
)
```

read config from logic_parser for tester 

**Parameters**: 

  * **parser** pointer to the logic parser 


**Return**: 0 on success, -1 on failure 

### function Write

```cpp
int Write(
    const char * file
) const
```

write config to file 

**Parameters**: 

  * **file** name of file to write 


**Return**: 0 on success, -1 on failure 

### function MapMemory

```cpp
int MapMemory(
    volatile uint32_t * map
) const
```

write register memory to the shared memory 

**Parameters**: 

  * **map** address of mapped shared memroy 


**Return**: 0 on success, -1 on failure 

### function GetMemory

```cpp
inline const Memory * GetMemory() const
```

get the const pointer to memroy struct 

**Return**: const pointer to memory struct 

### function ConvertSource

```cpp
uint8_t ConvertSource(
    size_t source
) const
```

convert source index from [LogicParser](classecl_1_1LogicParser.md) to memroy selection 

**Parameters**: 

  * **source** index of source from parser 


**Return**: selection index in memroy config 

## Public Attributes Documentation

### variable kFrontIoGroupNum

```cpp
static const size_t kFrontIoGroupNum = 3;
```


### variable kFrontIoGroupSize

```cpp
static const size_t kFrontIoGroupSize = 16;
```


### variable kFrontIoNum

```cpp
static const size_t kFrontIoNum = kFrontIoGroupNum * kFrontIoGroupSize;
```


### variable kFrontIoSelectionBits

```cpp
static const size_t kFrontIoSelectionBits = 8;
```


### variable kMultiNum

```cpp
static const size_t kMultiNum = 16;
```


### variable kMultiThresholdBits

```cpp
static const size_t kMultiThresholdBits = 8;
```


### variable kMultiBits

```cpp
static const size_t kMultiBits = kFrontIoNum + kMultiThresholdBits;
```


### variable kOrGateNum

```cpp
static const size_t kOrGateNum = 16;
```


### variable kOrGateBits

```cpp
static const size_t kOrGateBits = kFrontIoNum + kMultiNum;
```


### variable kAndGateNum

```cpp
static const size_t kAndGateNum = 16;
```


### variable kAndGateBits

```cpp
static const size_t kAndGateBits = kFrontIoNum + kMultiNum + kOrGateNum;
```


### variable kBackEnableBits

```cpp
static const size_t kBackEnableBits = 1;
```


### variable kBackSelectionBits

```cpp
static const size_t kBackSelectionBits = 8;
```


### variable kDividerNum

```cpp
static const size_t kDividerNum = 8;
```


### variable kDividerSelectionBits

```cpp
static const size_t kDividerSelectionBits = 8;
```


### variable kDivider_DivisorBits

```cpp
static const size_t kDivider_DivisorBits = 32;
```


### variable kDividerGateNum

```cpp
static const size_t kDividerGateNum = 8;
```


### variable kOperatorTypeBits

```cpp
static const size_t kOperatorTypeBits = 1;
```


### variable kDividerGate_DivderSourceSelectionBits

```cpp
static const size_t kDividerGate_DivderSourceSelectionBits = 4;
```


### variable kDividerGate_OtherSourceSelectionBits

```cpp
static const size_t kDividerGate_OtherSourceSelectionBits = 8;
```


### variable kDividerGateBits

```cpp
static const size_t kDividerGateBits = 16;
```


### variable kScalerNum

```cpp
static const size_t kScalerNum = 32;
```


### variable kScalerSourceSelectionBits

```cpp
static const size_t kScalerSourceSelectionBits = 8;
```


### variable kScalerClockSelectionBits

```cpp
static const size_t kScalerClockSelectionBits = 4;
```


## Friends

### friend operator<<

```cpp
friend std::ostream & operator<<(
    std::ostream & os,

    const MemoryConfig & config
);
```

print the memory 

**Parameters**: 

  * **os** ostream 
  * **config** the [MemoryConfig](classecl_1_1MemoryConfig.md) object to print 


**Return**: input ostream after print [MemoryConfig](classecl_1_1MemoryConfig.md)

-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800