---
title: ecl::Token

---

# ecl::Token



 [More...](#detailed-description)


`#include <token.h>`

Inherits from [ecl::Symbol](classecl_1_1Symbol.md)

Inherited by [ecl::Identifier](classecl_1_1Identifier.md), [ecl::Operator](Classes/classecl_1_1Operator.md)

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[Token](classecl_1_1Token.md#function-token)**(int type, const std::string & value)<br>constructor  |
| virtual | **[~Token](classecl_1_1Token.md#function-~token)**() =default<br>default destructor  |
| std::string | **[Value](classecl_1_1Token.md#function-value)**() const<br>value of this token  |

## Additional inherited members

**Public Functions inherited from [ecl::Symbol](classecl_1_1Symbol.md)**

|                | Name           |
| -------------- | -------------- |
| | **[Symbol](classecl_1_1Symbol.md#function-symbol)**(int type)<br>contructor  |
| virtual | **[~Symbol](classecl_1_1Symbol.md#function-~symbol)**() =default<br>default destructor  |
| int | **[Type](classecl_1_1Symbol.md#function-type)**() const<br>returns the symbol type  |


## Detailed Description

```cpp
class ecl::Token;
```


[Token](classecl_1_1Token.md) represents the terminal symbol in the context-free grammar. It includes the [Identifier](Classes/classecl_1_1Identifier.md), [Operator](Classes/classecl_1_1Operator.md) and Literal. 

## Public Functions Documentation

### function Token

```cpp
Token(
    int type,
    const std::string & value
)
```

constructor 

**Parameters**: 

  * **type** type of this token 
  * **value** the string value of the token


**Note**: For now this constructor returns a new instance of [Token](classecl_1_1Token.md), but maybe it should return a pointer to the singleton token and update the symbol table.


@exceptsafe Shall not throw exceptions. 


### function ~Token

```cpp
virtual ~Token() =default
```

default destructor 

### function Value

```cpp
inline std::string Value() const
```

value of this token 

**Return**: the token value


@exceptsafe Shall not throw exceptions. 


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800