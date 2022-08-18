---
title: ecl::LogicComparer::IdentifierInfo
summary: store more identifier information in the class LogicComparer

---

# ecl::LogicComparer::IdentifierInfo



store more identifier information in the class [LogicComparer](classecl_1_1LogicComparer.md) [More...](#detailed-description)

## Public Attributes

|                | Name           |
| -------------- | -------------- |
| [Identifier](classecl_1_1Identifier.md) * | **[id](Classes/structecl_1_1LogicComparer_1_1IdentifierInfo.md#variable-id)**  |
| size_t | **[index](structecl_1_1LogicComparer_1_1IdentifierInfo.md#variable-index)**  |
| int | **[layer](structecl_1_1LogicComparer_1_1IdentifierInfo.md#variable-layer)**  |

## Detailed Description

```cpp
struct ecl::LogicComparer::IdentifierInfo;
```

store more identifier information in the class [LogicComparer](classecl_1_1LogicComparer.md)

**Parameters**: 

  * **id** pointer to the identifier 
  * **index** the index of the identifier and it's consistent with the identifier flag in bitset form. But it's different form the index from the id_list_ since the id_list_ will be sorted later. 
  * **layer** the layer count from the root 

## Public Attributes Documentation

### variable id

```cpp
Identifier * id;
```


### variable index

```cpp
size_t index;
```


### variable layer

```cpp
int layer;
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800