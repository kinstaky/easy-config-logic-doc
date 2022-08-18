---
title: ecl::ProductionFactorySet

---

# ecl::ProductionFactorySet



 [More...](#detailed-description)


`#include <production.h>`

Inherits from [ecl::Symbol](classecl_1_1Symbol.md)

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[ProductionFactorySet](classecl_1_1ProductionFactorySet.md#function-productionfactoryset)**()<br>constructor  |
| | **[~ProductionFactorySet](classecl_1_1ProductionFactorySet.md#function-~productionfactoryset)**() =default<br>default destructor  |
| int | **[AddProductionFactory](classecl_1_1ProductionFactorySet.md#function-addproductionfactory)**([ProductionFactory](Classes/classecl_1_1ProductionFactory.md)< EvalType > * production)<br>add production factory  |
| [ProductionFactory](classecl_1_1ProductionFactory.md)< EvalType > * | **[operator[]](Classes/classecl_1_1ProductionFactorySet.md#function-operator[])**(size_t index) const<br>returns the production at the position index  |
| bool | **[IsComplete](classecl_1_1ProductionFactorySet.md#function-iscomplete)**() const<br>check whether the production factory in this set are complete  |
| auto | **[begin](classecl_1_1ProductionFactorySet.md#function-begin)**()<br>get frist element of the iterator  |
| auto | **[end](classecl_1_1ProductionFactorySet.md#function-end)**()<br>get the past-the-end element of the production iterator  |
| auto | **[size](classecl_1_1ProductionFactorySet.md#function-size)**() const<br>get the production size  |

## Additional inherited members

**Public Functions inherited from [ecl::Symbol](classecl_1_1Symbol.md)**

|                | Name           |
| -------------- | -------------- |
| | **[Symbol](classecl_1_1Symbol.md#function-symbol)**(int type)<br>contructor  |
| virtual | **[~Symbol](classecl_1_1Symbol.md#function-~symbol)**() =default<br>default destructor  |
| int | **[Type](classecl_1_1Symbol.md#function-type)**() const<br>returns the symbol type  |


## Detailed Description

```cpp
template <typename EvalType >
class ecl::ProductionFactorySet;
```


[ProductionFactorySet](classecl_1_1ProductionFactorySet.md) represents a set of production that deduced from the same nonterminal symbol and seperated by '|' in the context-free grammar. For example, in the grammar below: E -> E + T | T E -> E + T is representey by a production factory and E -> T is represented by another. They belongs to one production factory set. 

## Public Functions Documentation

### function ProductionFactorySet

```cpp
ProductionFactorySet()
```

constructor 

### function ~ProductionFactorySet

```cpp
~ProductionFactorySet() =default
```

default destructor 

@exceptsafe Shall not throw exceptions. 


### function AddProductionFactory

```cpp
int AddProductionFactory(
    ProductionFactory< EvalType > * production
)
```

add production factory 

**Parameters**: 

  * **production** the added production 


**Return**: 0 on success


@exceptsafe Shall not throw exceptions. 


### function operator[]

```cpp
inline ProductionFactory< EvalType > * operator[](
    size_t index
) const
```

returns the production at the position index 

**Parameters**: 

  * **index** index of the production 


**Return**: the production at the position index


@exceptsafe Shall not throw exceptions. 


### function IsComplete

```cpp
inline bool IsComplete() const
```

check whether the production factory in this set are complete 

**Return**: true if all the production factories are complete, otherwise false


@exceptsafe Shall not throw exceptions. 


### function begin

```cpp
inline auto begin()
```

get frist element of the iterator 

**Return**: first element of the iterator


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