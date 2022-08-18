---
title: ecl::Action

---

# ecl::Action



 [More...](#detailed-description)


`#include <syntax_parser.h>`

## Public Attributes

|                | Name           |
| -------------- | -------------- |
| const int | **[kTypeError](structecl_1_1Action.md#variable-ktypeerror)**  |
| const int | **[kTypeAccept](structecl_1_1Action.md#variable-ktypeaccept)**  |
| const int | **[kTypeShift](structecl_1_1Action.md#variable-ktypeshift)**  |
| const int | **[kTypeGoto](structecl_1_1Action.md#variable-ktypegoto)**  |
| const int | **[kTypeReduce](structecl_1_1Action.md#variable-ktypereduce)**  |
| int | **[type](structecl_1_1Action.md#variable-type)**  |
| int | **[collection](structecl_1_1Action.md#variable-collection)**  |
| void * | **[production](structecl_1_1Action.md#variable-production)**  |

## Detailed Description

```cpp
struct ecl::Action;
```


**Parameters**: 

  * **type** the action type: kTypeError: syntax error kTypeAccept: accept the expression 

 kTypeShift: shift the token to the stack kTypeGoto: goto the next collection status kTypeReduce: reduce the tokens into a production 
  * **collection** just used in type kTypeShift and kTypeGoto, and it represents the next collection status 
  * **production** just used in type kTypeReduce, and it represents the production to reduce 


This struct [Action](structecl_1_1Action.md) represents the action of the LR syntax parse. 

## Public Attributes Documentation

### variable kTypeError

```cpp
static const int kTypeError = -1;
```


### variable kTypeAccept

```cpp
static const int kTypeAccept = 0;
```


### variable kTypeShift

```cpp
static const int kTypeShift = 1;
```


### variable kTypeGoto

```cpp
static const int kTypeGoto = 2;
```


### variable kTypeReduce

```cpp
static const int kTypeReduce = 3;
```


### variable type

```cpp
int type;
```


### variable collection

```cpp
int collection;
```


### variable production

```cpp
void * production;
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800