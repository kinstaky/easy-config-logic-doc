---
title: ecl::ActionTable

---

# ecl::ActionTable



 [More...](#detailed-description)


`#include <syntax_parser.h>`

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[ActionTable](classecl_1_1ActionTable.md#function-actiontable)**(int collection_size, int symbol_size)<br>constructor  |
| | **[~ActionTable](classecl_1_1ActionTable.md#function-~actiontable)**()<br>destructor  |
| int | **[SetAction](classecl_1_1ActionTable.md#function-setaction)**(int collection, int symbol, int type, int next)<br>set the content of the action table  |
| int | **[SetAction](classecl_1_1ActionTable.md#function-setaction)**(int collection, int symbol, int type, void * production =nullptr)<br>set the content of the action table  |
| [Action](structecl_1_1Action.md) * | **[GetAction](Classes/classecl_1_1ActionTable.md#function-getaction)**(int collection, int symbol)<br>get the action through collection and symbol  |

## Detailed Description

```cpp
class ecl::ActionTable;
```


[ActionTable](classecl_1_1ActionTable.md), restores the action in this class. It actually use array to store inside. It get or set the action through two parameters, symbol and collection, i.e. an action is mapped to pair of symbol and collection. 

## Public Functions Documentation

### function ActionTable

```cpp
ActionTable(
    int collection_size,
    int symbol_size
)
```

constructor 

**Parameters**: 

  * **collection_size** size of the collection 
  * **symbol_size** size of the symbol of grammar



@exceptsafe Shall not throw exceptions. 


### function ~ActionTable

```cpp
~ActionTable()
```

destructor 

@exceptsafe Shall not throw exceptions. 


### function SetAction

```cpp
int SetAction(
    int collection,
    int symbol,
    int type,
    int next
)
```

set the content of the action table 

**Parameters**: 

  * **collection** present collection before action 
  * **symbol** next symbol meets 
  * **type** the action type 
  * **next** the next collection after this action 


**Return**: 0 on success, -1 on failure


@exceptsafe Shall not throw exceptions. 


### function SetAction

```cpp
int SetAction(
    int collection,
    int symbol,
    int type,
    void * production =nullptr
)
```

set the content of the action table 

**Parameters**: 

  * **collection** present collection before action 
  * **symbol** next symbol meets 
  * **type** the action type 
  * **production** the production to reduce 


**Return**: 0 on success, -1 on failure


@exceptsafe Shall not throw exceptions. 


### function GetAction

```cpp
Action * GetAction(
    int collection,
    int symbol
)
```

get the action through collection and symbol 

**Parameters**: 

  * **collection** present collection before action 
  * **symbol** next symbol meets 


**Return**: pointer to the action


@exceptsafe Shall not throw exceptions. 


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800