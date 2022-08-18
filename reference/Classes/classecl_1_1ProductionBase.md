---
title: ecl::ProductionBase

---

# ecl::ProductionBase



 [More...](#detailed-description)


`#include <production.h>`

Inherits from [ecl::Symbol](classecl_1_1Symbol.md)

Inherited by [ecl::Production< EvalType >](classecl_1_1Production.md), [ecl::ProductionFactory< EvalType >](Classes/classecl_1_1ProductionFactory.md), [ecl::Production< bool >](Classes/classecl_1_1Production.md), [ecl::Production< VarType >](Classes/classecl_1_1Production.md)

## Public Functions

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

## Protected Attributes

|                | Name           |
| -------------- | -------------- |
| [Symbol](classecl_1_1Symbol.md) * | **[parent_](Classes/classecl_1_1ProductionBase.md#variable-parent-)**  |
| size_t | **[children_size_](classecl_1_1ProductionBase.md#variable-children-size-)**  |
| std::vector< [Symbol](classecl_1_1Symbol.md) * > | **[children_](Classes/classecl_1_1ProductionBase.md#variable-children-)**  |

## Additional inherited members

**Public Functions inherited from [ecl::Symbol](classecl_1_1Symbol.md)**

|                | Name           |
| -------------- | -------------- |
| | **[Symbol](classecl_1_1Symbol.md#function-symbol)**(int type)<br>contructor  |
| virtual | **[~Symbol](classecl_1_1Symbol.md#function-~symbol)**() =default<br>default destructor  |
| int | **[Type](classecl_1_1Symbol.md#function-type)**() const<br>returns the symbol type  |


## Detailed Description

```cpp
class ecl::ProductionBase;
```


This class is the base class of Prouction, [ProductionFactory](classecl_1_1ProductionFactory.md) and ProductionFactoryItem classed. It implements the SetChild and SetChildren methods. 

## Public Functions Documentation

### function ProductionBase

```cpp
ProductionBase(
    Symbol * parent,
    size_t size,
    int type
)
```

constructor 

**Parameters**: 

  * **parent** pointer to the parent 
  * **size** number of symbols in right side of the production 
  * **type** type of the symbol, kSymbolType_Production, kSymbolType_ProductionFactory or kSymbolType_ProductionItem


**Note**: Put this constructor in protected field to prevent its creation. So only the creation of inherited class is allowed.


@exceptsafe Shall not throw exceptions. 


### function ~ProductionBase

```cpp
virtual ~ProductionBase() =default
```

default destructor 

### function SetParent

```cpp
inline int SetParent(
    ProductionBase * parent
)
```

set parent 

**Parameters**: 

  * **parent** pointer to new parent 


**Return**: 0 on success, -1 on failure


@exceptsafe Shall not throw exceptions. 


### function Parent

```cpp
inline Symbol * Parent() const
```

abstract method return the parent 

**Return**: the pointer to the parent object


@exceptsafe Shall not throw exceptions. 


### function size

```cpp
inline size_t size() const
```

get the size of children (the left hand side symbols) 

**Return**: size of children (the left hand side symbols)


@exceptsafe Shall not throw exceptions. 


### function SetChild

```cpp
int SetChild(
    size_t index,
    Symbol * child
)
```

set child of the syntax tree 

**Parameters**: 

  * **index** index of the child node in the vector 
  * **child** pointer of the symbol(production or token) 


**Return**: 0 if success, -1 on index out of bounds, -2 on invalid symbol pointer

**Note**: This method set child of the vector symbols, .i.e. the syntax tree.


@exceptsafe shall not throw exceptions. 


### function SetChildren

```cpp
int SetChildren(
    Symbol * child
)
```

set the last child of production 

**Parameters**: 

  * **child** pointer to the child being set 


**Return**: 0 on success, -1 on index out of bounds

**Note**: This is the terminal function of the recursively SetChildren method.


@exceptsafe Shall not throw exceptions. 


### function SetChildren

```cpp
template <typename... ArgTypes>
inline int SetChildren(
    Symbol * first,
    ArgTypes... children
)
```

recursively set children of production 

**Parameters**: 

  * **first** pointer to the first setting child 
  * **children** pointer to the children 


**Template Parameters**: 

  * **ArgTypes** type of the children (should be [Symbol](classecl_1_1Symbol.md) or inherit from [Symbol](Classes/classecl_1_1Symbol.md)) 


**Return**: 0 on success, -1 on index out of bounds

**Note**: This is a recursive function and set children except for the last one.


This is an overloaded member function, provided for convenience. It differs from the above function only in what argument(s) it accepts.

@exceptsafe Shall not throw exceptions. 


### function Child

```cpp
inline Symbol * Child(
    size_t index
) const
```

get child from production through index 

**Parameters**: 

  * **index** index of child to get 


**Return**: pointer to the child at index


@exceptsafe Shall not throw exceptions. 


### function IsComplete

```cpp
inline bool IsComplete() const
```

check this production is complete 

**Return**: true on complete, otherwise false


@exceptsafe Shall not throw exceptions. 


## Protected Attributes Documentation

### variable parent_

```cpp
Symbol * parent_;
```


### variable children_size_

```cpp
size_t children_size_;
```


### variable children_

```cpp
std::vector< Symbol * > children_;
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800