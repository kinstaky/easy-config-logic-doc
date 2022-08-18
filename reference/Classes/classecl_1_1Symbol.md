---
title: ecl::Symbol

---

# ecl::Symbol



 [More...](#detailed-description)


`#include <token.h>`

Inherited by [ecl::ProductionBase](classecl_1_1ProductionBase.md), [ecl::ProductionFactorySet< EvalType >](Classes/classecl_1_1ProductionFactorySet.md), [ecl::Token](Classes/classecl_1_1Token.md)

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[Symbol](classecl_1_1Symbol.md#function-symbol)**(int type)<br>contructor  |
| virtual | **[~Symbol](classecl_1_1Symbol.md#function-~symbol)**() =default<br>default destructor  |
| int | **[Type](classecl_1_1Symbol.md#function-type)**() const<br>returns the symbol type  |

## Detailed Description

```cpp
class ecl::Symbol;
```


[Symbol](classecl_1_1Symbol.md) represents the base element in the context-free grammar. It includes the terminal symbol and the nonterminal symbol. The terminal symbol is represented by class [Token](Classes/classecl_1_1Token.md) and the nonterminal symbol is represented by class [Production](Classes/classecl_1_1Production.md) which is expandable. 

## Public Functions Documentation

### function Symbol

```cpp
Symbol(
    int type
)
```

contructor 

**Parameters**: 

  * **type** type of this symbol



@exceptsafe This function should not throw exceptions. 


### function ~Symbol

```cpp
virtual ~Symbol() =default
```

default destructor 

### function Type

```cpp
inline int Type() const
```

returns the symbol type 

**Return**: the symbol type


@exceptsafe Shall not throw exceptions. 


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800