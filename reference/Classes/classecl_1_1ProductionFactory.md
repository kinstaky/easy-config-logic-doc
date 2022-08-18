---
title: ecl::ProductionFactory

---

# ecl::ProductionFactory



 [More...](#detailed-description)


`#include <production.h>`

Inherits from [ecl::ProductionBase](classecl_1_1ProductionBase.md), [ecl::Symbol](Classes/classecl_1_1Symbol.md)

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[ProductionFactory](classecl_1_1ProductionFactory.md#function-productionfactory)**([Symbol](Classes/classecl_1_1Symbol.md) * parent, size_t size, const [ActionType](namespaceecl.md#using-actiontype)< EvalType > & action =nullptr)<br>constructor  |
| virtual | **[~ProductionFactory](classecl_1_1ProductionFactory.md#function-~productionfactory)**()<br>destructor  |
| [Production](classecl_1_1Production.md)< EvalType > * | **[CreateProduction](Classes/classecl_1_1ProductionFactory.md#function-createproduction)**(std::stack< [Symbol](Classes/classecl_1_1Symbol.md) * > symbols)<br>create a [Production](Classes/classecl_1_1Production.md) instance  |
| [ProductionItem](classecl_1_1ProductionItem.md)< EvalType > * | **[GenerateItems](Classes/classecl_1_1ProductionFactory.md#function-generateitems)**()<br>recursively generate items  |
| [ProductionItem](classecl_1_1ProductionItem.md)< EvalType > * | **[Item](Classes/classecl_1_1ProductionFactory.md#function-item)**(size_t index)<br>get the nth item  |

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
class ecl::ProductionFactory;
```


This class applys the factory pattern and creates the [Production](classecl_1_1Production.md) instance. This [ProductionFactory](Classes/classecl_1_1ProductionFactory.md) class represents the abstract syntax in the grammar. 

## Public Functions Documentation

### function ProductionFactory

```cpp
ProductionFactory(
    Symbol * parent,
    size_t size,
    const ActionType< EvalType > & action =nullptr
)
```

constructor 

**Parameters**: 

  * **size** size of the symbols on the right side of production 
  * **action** pointer to the action function, default is nullptr 



This is an overloaded member function, provided for convenience. It differs from the above function only in what argument(s) it accepts.

@exceptsafe Shall not throw exceptions. 


### function ~ProductionFactory

```cpp
virtual ~ProductionFactory()
```

destructor 

### function CreateProduction

```cpp
Production< EvalType > * CreateProduction(
    std::stack< Symbol * > symbols
)
```

create a [Production](classecl_1_1Production.md) instance 

**Parameters**: 

  * **symbols** stack of symbols to create the concrete production 


**Return**: pointer to the production instance, nullptr on error


@exceptsafe Shall not throw exceptions. 


### function GenerateItems

```cpp
ProductionItem< EvalType > * GenerateItems()
```

recursively generate items 

**Return**: pointer to the next item, or nullptr if finish

**Note**: Item represents the status of a production in the LR syntax parse process. For example, the item "E -> E '.' + T" of the production "E -> E + T" means the item have received the production E and expects a symbol '+' followed by production T. The dot '.' shows the status.


@exceptsafe Shall not throw exceptions. 


### function Item

```cpp
ProductionItem< EvalType > * Item(
    size_t index
)
```

get the nth item 

**Parameters**: 

  * **index** index of the item 


**Return**: pointer to the specified item, or nullptr if out of bounds


@exceptsafe Shall not throw exceptions. 


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800