---
title: ecl::LogicComparer::Node

---

# ecl::LogicComparer::Node





## Public Attributes

|                | Name           |
| -------------- | -------------- |
| int | **[op_type](structecl_1_1LogicComparer_1_1Node.md#variable-op-type)**  |
| size_t | **[size](structecl_1_1LogicComparer_1_1Node.md#variable-size)**  |
| struct Node * | **[children](structecl_1_1LogicComparer_1_1Node.md#variable-children)**  |
| [Identifier](classecl_1_1Identifier.md) * | **[id](Classes/structecl_1_1LogicComparer_1_1Node.md#variable-id)**  |
| bool | **[cache_value](structecl_1_1LogicComparer_1_1Node.md#variable-cache-value)**  |
| std::bitset< [kMaxIdentifiers](namespaceecl.md#variable-kmaxidentifiers) > | **[id_flag](structecl_1_1LogicComparer_1_1Node.md#variable-id-flag)**  |

## Public Attributes Documentation

### variable op_type

```cpp
int op_type;
```


### variable size

```cpp
size_t size;
```


### variable children

```cpp
struct Node * children;
```


### variable id

```cpp
Identifier * id;
```


### variable cache_value

```cpp
bool cache_value;
```


### variable id_flag

```cpp
std::bitset< kMaxIdentifiers > id_flag;
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800