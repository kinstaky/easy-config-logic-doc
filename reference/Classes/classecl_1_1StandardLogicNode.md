---
title: ecl::StandardLogicNode

---

# ecl::StandardLogicNode






`#include <standard_logic_node.h>`

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[StandardLogicNode](classecl_1_1StandardLogicNode.md#function-standardlogicnode)**([StandardLogicNode](Classes/classecl_1_1StandardLogicNode.md) * parent, int type)<br>Construct a new Standard Logic Node object.  |
| | **[~StandardLogicNode](classecl_1_1StandardLogicNode.md#function-~standardlogicnode)**() =default<br>Destroy the Standard Logic Node object.  |
| bool | **[operator==](classecl_1_1StandardLogicNode.md#function-operator==)**(const [StandardLogicNode](Classes/classecl_1_1StandardLogicNode.md) & node) const<br>compare two nodes  |
| void | **[FreeChildren](classecl_1_1StandardLogicNode.md#function-freechildren)**()<br>free children and their children  |
| int | **[OperatorType](classecl_1_1StandardLogicNode.md#function-operatortype)**() const<br>get the operator type  |
| std::string | **[OperatorString](classecl_1_1StandardLogicNode.md#function-operatorstring)**() const<br>get the operator string  |
| int | **[SetParent](classecl_1_1StandardLogicNode.md#function-setparent)**([StandardLogicNode](Classes/classecl_1_1StandardLogicNode.md) * node)<br>change the parent node  |
| [StandardLogicNode](classecl_1_1StandardLogicNode.md) * | **[Parent](Classes/classecl_1_1StandardLogicNode.md#function-parent)**() const<br>get the parent  |
| int | **[AddLeaf](classecl_1_1StandardLogicNode.md#function-addleaf)**(size_t index)<br>add a leaf by global index  |
| int | **[AddLeaves](classecl_1_1StandardLogicNode.md#function-addleaves)**(std::bitset< [kMaxIdentifier](namespaceecl.md#variable-kmaxidentifier) > leaves)<br>add several leaves in bitset form  |
| int | **[DeleteLeaf](classecl_1_1StandardLogicNode.md#function-deleteleaf)**(size_t index)<br>delete a leaf by global index  |
| size_t | **[LeafSize](classecl_1_1StandardLogicNode.md#function-leafsize)**() const<br>get the leaves size  |
| bool | **[Leaf](classecl_1_1StandardLogicNode.md#function-leaf)**(size_t index) const<br>check whether identifier at index exists in this node  |
| std::bitset< [kMaxIdentifier](namespaceecl.md#variable-kmaxidentifier) > | **[Leaves](classecl_1_1StandardLogicNode.md#function-leaves)**() const<br>get the leaves flag  |
| bool | **[IsOneLeaf](classecl_1_1StandardLogicNode.md#function-isoneleaf)**(size_t & index) const<br>check whether this node is actually a leaf(contains only one identifier)  |
| int | **[AddBranch](classecl_1_1StandardLogicNode.md#function-addbranch)**([StandardLogicNode](Classes/classecl_1_1StandardLogicNode.md) * node)<br>add a branch node  |
| int | **[SetBranch](classecl_1_1StandardLogicNode.md#function-setbranch)**(size_t index, [StandardLogicNode](Classes/classecl_1_1StandardLogicNode.md) * node)<br>change the branch by index  |
| int | **[DeleteBranch](classecl_1_1StandardLogicNode.md#function-deletebranch)**(size_t index)<br>delete a branch by index  |
| [StandardLogicNode](classecl_1_1StandardLogicNode.md) * | **[Branch](Classes/classecl_1_1StandardLogicNode.md#function-branch)**(size_t index) const<br>get the branch by index  |
| size_t | **[BranchSize](classecl_1_1StandardLogicNode.md#function-branchsize)**() const<br>get the branch size  |
| bool | **[AddBranchNecessary](classecl_1_1StandardLogicNode.md#function-addbranchnecessary)**([StandardLogicNode](Classes/classecl_1_1StandardLogicNode.md) * node) const<br>check whether is necessary to add this branch  |
| bool | **[BranchNecessary](classecl_1_1StandardLogicNode.md#function-branchnecessary)**(size_t index, [StandardLogicNode](Classes/classecl_1_1StandardLogicNode.md) * node =nullptr) const<br>check whether the specific branch is necessary  |
| int | **[Depth](classecl_1_1StandardLogicNode.md#function-depth)**() const<br>get the depth of this node  |
| void | **[PrintString](classecl_1_1StandardLogicNode.md#function-printstring)**(std::ostream & os, std::vector< [Identifier](Classes/classecl_1_1Identifier.md) * > id_list) const<br>print the string of this node  |
| void | **[PrintTree](classecl_1_1StandardLogicNode.md#function-printtree)**(std::vector< [Identifier](Classes/classecl_1_1Identifier.md) * > id_list, std::string prefix ="") const<br>print the node in tree structure  |

## Public Functions Documentation

### function StandardLogicNode

```cpp
StandardLogicNode(
    StandardLogicNode * parent,
    int type
)
```

Construct a new Standard Logic Node object. 

**Parameters**: 

  * **parent** pointer to the parent 
  * **type** operator type of the node 


### function ~StandardLogicNode

```cpp
~StandardLogicNode() =default
```

Destroy the Standard Logic Node object. 

### function operator==

```cpp
bool operator==(
    const StandardLogicNode & node
) const
```

compare two nodes 

**Parameters**: 

  * **node** the node to compare 


**Return**: true if two nodes are the same, false otherwise 

### function FreeChildren

```cpp
inline void FreeChildren()
```

free children and their children 

### function OperatorType

```cpp
inline int OperatorType() const
```

get the operator type 

**Return**: 0 on null, 1 on or, 2 on and 

### function OperatorString

```cpp
inline std::string OperatorString() const
```

get the operator string 

**Return**: string value of the operator 

### function SetParent

```cpp
inline int SetParent(
    StandardLogicNode * node
)
```

change the parent node 

**Parameters**: 

  * **node** pointer to the parent node 


**Return**: 0 on success, -1 on failure 

### function Parent

```cpp
inline StandardLogicNode * Parent() const
```

get the parent 

**Return**: pointer to the parent 

### function AddLeaf

```cpp
inline int AddLeaf(
    size_t index
)
```

add a leaf by global index 

**Parameters**: 

  * **index** global index of the adding leaf 


**Return**: 0 on success, -1 on invalid index 

### function AddLeaves

```cpp
inline int AddLeaves(
    std::bitset< kMaxIdentifier > leaves
)
```

add several leaves in bitset form 

**Parameters**: 

  * **leaves** addding leaves in bitset form 


**Return**: 0 on success, -1 on failure 

### function DeleteLeaf

```cpp
inline int DeleteLeaf(
    size_t index
)
```

delete a leaf by global index 

**Parameters**: 

  * **index** global index of the deleting leaf 


**Return**: 0 on success, -1 on invalid index, -2 on leaf not exist 

### function LeafSize

```cpp
inline size_t LeafSize() const
```

get the leaves size 

**Return**: size of the leaves 

### function Leaf

```cpp
inline bool Leaf(
    size_t index
) const
```

check whether identifier at index exists in this node 

**Parameters**: 

  * **index** index of the global identifier 


**Return**: true if exists, false otherwise 

### function Leaves

```cpp
inline std::bitset< kMaxIdentifier > Leaves() const
```

get the leaves flag 

**Return**: leaves bitset flag 

### function IsOneLeaf

```cpp
bool IsOneLeaf(
    size_t & index
) const
```

check whether this node is actually a leaf(contains only one identifier) 

**Parameters**: 

  * **index** index of the only identifier if this node is leaf 


**Return**: true if this node is actually a leaf, false otherwises 

### function AddBranch

```cpp
int AddBranch(
    StandardLogicNode * node
)
```

add a branch node 

**Parameters**: 

  * **node** the node to add 


**Return**: 0 on success, -1 on failure 

### function SetBranch

```cpp
inline int SetBranch(
    size_t index,
    StandardLogicNode * node
)
```

change the branch by index 

**Parameters**: 

  * **index** the index of branch to change 
  * **node** the new branch to replace 


**Return**: 0 on success, -1 on failure 

### function DeleteBranch

```cpp
inline int DeleteBranch(
    size_t index
)
```

delete a branch by index 

**Parameters**: 

  * **index** the index of the branch to delete 


**Return**: 0 on success, -1 on failure 

### function Branch

```cpp
inline StandardLogicNode * Branch(
    size_t index
) const
```

get the branch by index 

**Parameters**: 

  * **index** index of the branch to get 


**Return**: pointer to the branch at index, or nullptr otherwise 

### function BranchSize

```cpp
inline size_t BranchSize() const
```

get the branch size 

**Return**: size of the branches 

### function AddBranchNecessary

```cpp
bool AddBranchNecessary(
    StandardLogicNode * node
) const
```

check whether is necessary to add this branch 

**Parameters**: 

  * **node** the pointer to the branch to check 


**Return**: true if necessary, false otherwise 

### function BranchNecessary

```cpp
bool BranchNecessary(
    size_t index,
    StandardLogicNode * node =nullptr
) const
```

check whether the specific branch is necessary 

**Parameters**: 

  * **index** the index of the branch to check 
  * **node** the branch to compare, default is nullptr and just compare the leaves 


**Return**: true if necessary, false otherwise 

**Note**: If the node is nullptr, this function compare the branch's leaves at index with the leaves_. Otherwise, this function compare the branches with the node.

### function Depth

```cpp
int Depth() const
```

get the depth of this node 

**Return**: 0 if it's leaf, or n+1 for n is the largets depth of all branches 

### function PrintString

```cpp
void PrintString(
    std::ostream & os,
    std::vector< Identifier * > id_list
) const
```

print the string of this node 

**Parameters**: 

  * **os** ostream 
  * **id_list** list of all identifiers in tree 


### function PrintTree

```cpp
void PrintTree(
    std::vector< Identifier * > id_list,
    std::string prefix =""
) const
```

print the node in tree structure 

**Parameters**: 

  * **id_list** list of all identifiers in tree 
  * **prefix** prefix string of this node 


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800