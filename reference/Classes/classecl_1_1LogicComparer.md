---
title: ecl::LogicComparer

---

# ecl::LogicComparer






`#include <logic_comparer.h>`

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[LogicComparer](classecl_1_1LogicComparer.md#function-logiccomparer)**()<br>constructor  |
| | **[~LogicComparer](classecl_1_1LogicComparer.md#function-~logiccomparer)**()<br>default destructor  |
| bool | **[Compare](classecl_1_1LogicComparer.md#function-compare)**(const std::string & line1, const std::string & line2)<br>compare two logical expression  |

## Public Functions Documentation

### function LogicComparer

```cpp
LogicComparer()
```

constructor 

@exceptsafe Shall not throw exceptions. 


### function ~LogicComparer

```cpp
~LogicComparer()
```

default destructor 

### function Compare

```cpp
bool Compare(
    const std::string & line1,
    const std::string & line2
)
```

compare two logical expression 

**Parameters**: 

  * **line1** first logical expression 
  * **line2** second logical expression 


**Return**: true if equal, false not equal


@exceptsafe Shall not throw exceptions. 


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800