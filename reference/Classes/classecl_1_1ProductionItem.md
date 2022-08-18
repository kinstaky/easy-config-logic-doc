---
title: ecl::ProductionItem

---

# ecl::ProductionItem



 [More...](#detailed-description)


`#include <production.h>`

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[ProductionItem](classecl_1_1ProductionItem.md#function-productionitem)**([Symbol](Classes/classecl_1_1Symbol.md) * parent, size_t size, size_t index, [ProductionFactory](Classes/classecl_1_1ProductionFactory.md)< EvalType > * origin)<br>constructor  |
| virtual | **[~ProductionItem](classecl_1_1ProductionItem.md#function-~productionitem)**() =default<br>default destructor  |
| [ProductionFactory](classecl_1_1ProductionFactory.md)< EvalType > * | **[Origin](Classes/classecl_1_1ProductionItem.md#function-origin)**() const<br>get the origin of this item  |
| [Symbol](classecl_1_1Symbol.md) * | **[ExpectedSymbol](Classes/classecl_1_1ProductionItem.md#function-expectedsymbol)**() const<br>get the expected symbol  |
| bool | **[IsLast](classecl_1_1ProductionItem.md#function-islast)**() const<br>get whether this item is the last item  |
| size_t | **[Index](classecl_1_1ProductionItem.md#function-index)**() const<br>get the item index  |

## Detailed Description

```cpp
template <typename EvalType >
class ecl::ProductionItem;
```


[ProductionItem](classecl_1_1ProductionItem.md) is the item of a production that used in the LR syntax parser. It represents one of the status of a production in the reduced process. 

## Public Functions Documentation

### function ProductionItem

```cpp
ProductionItem(
    Symbol * parent,
    size_t size,
    size_t index,
    ProductionFactory< EvalType > * origin
)
```

constructor 

**Parameters**: 

  * **parent** left hand side of production, i.e. [ProductionFactorySet](classecl_1_1ProductionFactorySet.md)
  * **size** size of the symbols on the right side of production 
  * **index** index of this item 
  * **origin** origin of the item, i.e. the [ProductionFactory](classecl_1_1ProductionFactory.md)



@exceptsafe Shall not throw exceptions. 


### function ~ProductionItem

```cpp
virtual ~ProductionItem() =default
```

default destructor 

### function Origin

```cpp
inline ProductionFactory< EvalType > * Origin() const
```

get the origin of this item 

**Return**: the origin of the item

**Note**: This method gets the pointer orgin of this item, i.e. the [ProductionFactory](classecl_1_1ProductionFactory.md) generates this [ProductionItem](Classes/classecl_1_1ProductionItem.md).


@exceptsafe Shall not throw exceptions. 


### function ExpectedSymbol

```cpp
inline Symbol * ExpectedSymbol() const
```

get the expected symbol 

**Return**: the expected symbol, nullptr if this is the last item.


@exceptsafe Shall not throw exceptions. 


### function IsLast

```cpp
inline bool IsLast() const
```

get whether this item is the last item 

**Return**: true if this item is the last item, false otherwise


@exceptsafe Shall not throw exceptions. 


### function Index

```cpp
inline size_t Index() const
```

get the item index 

**Return**: the item index


@exceptsafe Shall not throw exceptions. 


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800