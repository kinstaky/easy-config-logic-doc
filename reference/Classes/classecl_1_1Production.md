---
title: ecl::Production

---

# ecl::Production



 [More...](#detailed-description)


`#include <production.h>`

Inherits from [ecl::ProductionBase](classecl_1_1ProductionBase.md), [ecl::Symbol](Classes/classecl_1_1Symbol.md)

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[Production](classecl_1_1Production.md#function-production)**([Symbol](Classes/classecl_1_1Symbol.md) * parent, size_t size, [ActionType](namespaceecl.md#using-actiontype)< EvalType > * action, [Symbol](Classes/classecl_1_1Symbol.md) * origin =nullptr)<br>constructor  |
| | **[~Production](classecl_1_1Production.md#function-~production)**() =default<br>default destructor  |
| EvalType | **[Eval](classecl_1_1Production.md#function-eval)**() const<br>evaluate the value of production  |
| [Symbol](classecl_1_1Symbol.md) * | **[Origin](Classes/classecl_1_1Production.md#function-origin)**() const<br>get the origin production factory pointer  |
| template <typename EvalType \> <br>EvalType | **[Evaluate](classecl_1_1Production.md#function-evaluate)**([Symbol](Classes/classecl_1_1Symbol.md) * symbol)<br>helper function to evaluate symbol  |

## Additional inherited members

**Public Functions inherited from [ecl::ProductionBase](classecl_1_1ProductionBase.md)**

|                | Name           |
| -------------- | -------------- |
| | **[ProductionBase](classecl_1_1ProductionBase.md#function-productionbase)**([Symbol](Classes/classecl_1_1Symbol.md) * parent, size_t size, int type)<br>constructor  |
| virtual | **[~ProductionBase](classecl_1_1ProductionBase.md#function-~productionbase)**() =default<br>default destructor  |
| int | **[SetParent](classecl_1_1ProductionBase.md#function-setparent)**([ProductionBase](Classes/classecl_1_1ProductionBase.md) * parent)<br>set parent  |
| [Symbol](classecl_1_1Symbol.md) * | **[Parent](Classes/classecl_1_1ProductionBase.md#function-parent)**() const<br>abstract method return the parent  |
| size_t | **[size](classecl_1_1ProductionBase.md#function-size)**() const<br>get the size of children (the left hand side symbols)  |
| int | **[SetChild](classecl_1_1ProductionBase.md#function-setchild)**(size_t index, [Symbol](Classes/classecl_1_1Symbol.md) * child)<br>set child of the syntax tree  |
| int | **[SetChildren](classecl_1_1ProductionBase.md#function-setchildren)**([Symbol](Classes/classecl_1_1Symbol.md) * child)<br>set the last child of production  |
| template <typename... ArgTypes\> <br>int | **[SetChildren](classecl_1_1ProductionBase.md#function-setchildren)**([Symbol](Classes/classecl_1_1Symbol.md) * first, ArgTypes... children)<br>recursively set children of production  |
| [Symbol](classecl_1_1Symbol.md) * | **[Child](Classes/classecl_1_1ProductionBase.md#function-child)**(size_t index) const<br>get child from production through index  |
| bool | **[IsComplete](classecl_1_1ProductionBase.md#function-iscomplete)**() const<br>check this production is complete  |

**Protected Attributes inherited from [ecl::ProductionBase](classecl_1_1ProductionBase.md)**

|                | Name           |
| -------------- | -------------- |
| [Symbol](classecl_1_1Symbol.md) * | **[parent_](Classes/classecl_1_1ProductionBase.md#variable-parent-)**  |
| size_t | **[children_size_](classecl_1_1ProductionBase.md#variable-children-size-)**  |
| std::vector< [Symbol](classecl_1_1Symbol.md) * > | **[children_](Classes/classecl_1_1ProductionBase.md#variable-children-)**  |

**Public Functions inherited from [ecl::Symbol](classecl_1_1Symbol.md)**

|                | Name           |
| -------------- | -------------- |
| | **[Symbol](classecl_1_1Symbol.md#function-symbol)**(int type)<br>contructor  |
| virtual | **[~Symbol](classecl_1_1Symbol.md#function-~symbol)**() =default<br>default destructor  |
| int | **[Type](classecl_1_1Symbol.md#function-type)**() const<br>returns the symbol type  |


## Detailed Description

```cpp
template <typename EvalType >
class ecl::Production;
```


[Production](classecl_1_1Production.md) class represents the concrete syntax in the grammar. It contains the concrete syntax tree, the value of the production can be evaluated according to the action function. 

## Public Functions Documentation

### function Production

```cpp
Production(
    Symbol * parent,
    size_t size,
    ActionType< EvalType > * action,
    Symbol * origin =nullptr
)
```

constructor 

**Parameters**: 

  * **parent** pointer to the parent production 
  * **size** size of the symbols on the right side of production 
  * **action** pointer to the action function, get from factory. 
  * **origin** pointer to the origin production factory



@exceptsafe Shall not throw exceptions. 


### function ~Production

```cpp
~Production() =default
```

default destructor 

### function Eval

```cpp
inline EvalType Eval() const
```

evaluate the value of production 

**Return**: value of the production

**Note**: This method evaluates the value of this production. It recursively evaluates the value of children nodes and combines them according to the action.


@exceptsafe Shall not throw exceptions. 


### function Origin

```cpp
inline Symbol * Origin() const
```

get the origin production factory pointer 

**Return**: the pointer to the origin production factory


@exceptsafe Shall not throw exceptions. 


### function Evaluate

```cpp
template <typename EvalType >
EvalType Evaluate(
    Symbol * symbol
)
```

helper function to evaluate symbol 

**Parameters**: 

  * **symbol** pointer to the symbol being evaluated


**Exceptions**: 

  * **runtime_error** invalid symbol type or not evaluable symbol type 


**Template Parameters**: 

  * **EvalType** type of the expression evaluated 


**Return**: evaluation value

**Note**: This method helps generate the action function, since it handles the evaluation of all kinds of symbols.

-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800