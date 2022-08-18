---
title: ecl::Operator

---

# ecl::Operator






`#include <token.h>`

Inherits from [ecl::Token](classecl_1_1Token.md), [ecl::Symbol](Classes/classecl_1_1Symbol.md)

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[Operator](classecl_1_1Operator.md#function-operator)**(const std::string & value)<br>constructor from string  |
| | **[Operator](classecl_1_1Operator.md#function-operator)**(char value)<br>constructor from char  |
| virtual | **[~Operator](classecl_1_1Operator.md#function-~operator)**() =default<br>default destructor  |

## Additional inherited members

**Public Functions inherited from [ecl::Token](classecl_1_1Token.md)**

|                | Name           |
| -------------- | -------------- |
| | **[Token](classecl_1_1Token.md#function-token)**(int type, const std::string & value)<br>constructor  |
| virtual | **[~Token](classecl_1_1Token.md#function-~token)**() =default<br>default destructor  |
| std::string | **[Value](classecl_1_1Token.md#function-value)**() const<br>value of this token  |

**Public Functions inherited from [ecl::Symbol](classecl_1_1Symbol.md)**

|                | Name           |
| -------------- | -------------- |
| | **[Symbol](classecl_1_1Symbol.md#function-symbol)**(int type)<br>contructor  |
| virtual | **[~Symbol](classecl_1_1Symbol.md#function-~symbol)**() =default<br>default destructor  |
| int | **[Type](classecl_1_1Symbol.md#function-type)**() const<br>returns the symbol type  |


## Public Functions Documentation

### function Operator

```cpp
Operator(
    const std::string & value
)
```

constructor from string 

**Parameters**: 

  * **value** the string value of this [Operator](classecl_1_1Operator.md)



@exceptsafe shall not throw exceptions 


### function Operator

```cpp
Operator(
    char value
)
```

constructor from char 

**Parameters**: 

  * **value** the char value of this [Operator](classecl_1_1Operator.md)



This is an overloaded member function, provided for convenience. It differs from the above function only in what argument(s) it accepts.

@exceptsafe Shall not throw exceptions. 


### function ~Operator

```cpp
virtual ~Operator() =default
```

default destructor 

-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800