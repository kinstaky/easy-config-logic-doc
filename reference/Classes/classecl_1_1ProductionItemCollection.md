---
title: ecl::ProductionItemCollection

---

# ecl::ProductionItemCollection



 [More...](#detailed-description)


`#include <production.h>`

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[ProductionItemCollection](classecl_1_1ProductionItemCollection.md#function-productionitemcollection)**() =default<br>constructor  |
| | **[~ProductionItemCollection](classecl_1_1ProductionItemCollection.md#function-~productionitemcollection)**() =default<br>default destructor  |
| int | **[AddItem](classecl_1_1ProductionItemCollection.md#function-additem)**([ProductionItem](Classes/classecl_1_1ProductionItem.md)< EvalType > * item, bool core)<br>add item to this collection  |
| [ProductionItemCollection](classecl_1_1ProductionItemCollection.md)< EvalType > * | **[Goto](Classes/classecl_1_1ProductionItemCollection.md#function-goto)**([Symbol](Classes/classecl_1_1Symbol.md) * symbol) const<br>goto function of collections meets symbol  |
| int | **[SetGoto](classecl_1_1ProductionItemCollection.md#function-setgoto)**([Symbol](Classes/classecl_1_1Symbol.md) * symbol, [ProductionItemCollection](Classes/classecl_1_1ProductionItemCollection.md)< EvalType > * collection)<br>set goto destination  |
| auto | **[begin](classecl_1_1ProductionItemCollection.md#function-begin)**()<br>get the first element of the collection iterator  |
| auto | **[end](classecl_1_1ProductionItemCollection.md#function-end)**()<br>get the past-the-end element of the production iterator  |
| auto | **[size](classecl_1_1ProductionItemCollection.md#function-size)**() const<br>get the production size  |

## Detailed Description

```cpp
template <typename EvalType >
class ecl::ProductionItemCollection;
```


[ProductionItemCollection](classecl_1_1ProductionItemCollection.md) is the collection of the production items. 

## Public Functions Documentation

### function ProductionItemCollection

```cpp
ProductionItemCollection() =default
```

constructor 

### function ~ProductionItemCollection

```cpp
~ProductionItemCollection() =default
```

default destructor 

### function AddItem

```cpp
int AddItem(
    ProductionItem< EvalType > * item,
    bool core
)
```

add item to this collection 

**Parameters**: 

  * **item** added item 
  * **core** whether is core item 


**Return**: 0 on success, -1 on failure


@exceptsafe Shall not throw exceptions. 


### function Goto

```cpp
ProductionItemCollection< EvalType > * Goto(
    Symbol * symbol
) const
```

goto function of collections meets symbol 

**Parameters**: 

  * **symbol** the next symbol 


**Return**: pointer to the next item collection, nullptr if no destination


@exceptsafe shall not throw exceptions 


### function SetGoto

```cpp
inline int SetGoto(
    Symbol * symbol,
    ProductionItemCollection< EvalType > * collection
)
```

set goto destination 

**Parameters**: 

  * **symbol** pointer to the next symbol 
  * **collection** destination collection returns 0 on success, -1 on failure



@exceptsafe Shall not throw exceptions. 


### function begin

```cpp
inline auto begin()
```

get the first element of the collection iterator 

**Return**: first element of the iterator, represents the first item


@exceptsafe Shall not throw exceptions. 


### function end

```cpp
inline auto end()
```

get the past-the-end element of the production iterator 

**Return**: the past-the-end element of the production iterator


@exceptsafe Shall not throw exceptions. 


### function size

```cpp
inline auto size() const
```

get the production size 

**Return**: size of the production


@exceptsafe Shall not throw exceptions. 


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800