---
title: ecl::Identifier

---

# ecl::Identifier



 [More...](#detailed-description)


`#include <token.h>`

Inherits from [ecl::Token](classecl_1_1Token.md), [ecl::Symbol](Classes/classecl_1_1Symbol.md)

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[Identifier](classecl_1_1Identifier.md#function-identifier)**(const std::string & value)<br>constructor  |
| | **[Identifier](classecl_1_1Identifier.md#function-identifier)**(char value)<br>constructor from char  |
| virtual | **[~Identifier](classecl_1_1Identifier.md#function-~identifier)**() =default<br>default destructor  |
| int | **[Attach](classecl_1_1Identifier.md#function-attach)**(void * var_ptr)<br>attach variable  |
| void * | **[GetAttached](classecl_1_1Identifier.md#function-getattached)**() const<br>attached variable pointer  |

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


## Detailed Description

```cpp
class ecl::Identifier;
```


[Identifier](classecl_1_1Identifier.md) token 

## Public Functions Documentation

### function Identifier

```cpp
Identifier(
    const std::string & value
)
```

constructor 

**Parameters**: 

  * **value** the string value of this [Identifier](classecl_1_1Identifier.md)



@exceptsafe Shall not throw exceptions. 


### function Identifier

```cpp
Identifier(
    char value
)
```

constructor from char 

**Parameters**: 

  * **value** the char value of this [Operator](classecl_1_1Operator.md)



This is an overloaded member function, provided for convenience. It differs from the above function only in what argument(s) it accepts.

@exceptsafe Shall not throw exceptions. 


### function ~Identifier

```cpp
virtual ~Identifier() =default
```

default destructor 

### function Attach

```cpp
int Attach(
    void * var_ptr
)
```

attach variable 

**Parameters**: 

  * **var_ptr** pointer to the attaching variable 


**Return**: 0 on success, -1 on null pointer


@exceptsafe Shall not throw exceptions. 


### function GetAttached

```cpp
void * GetAttached() const
```

attached variable pointer 

**Return**: the attached variable pointer


@exceptsafe Shall not throw exceptions. 


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800