---
title: standardize/standard_logic_node.h

---

# standardize/standard_logic_node.h



## Namespaces

| Name           |
| -------------- |
| **[ecl](namespaceecl.md)**  |

## Classes

|                | Name           |
| -------------- | -------------- |
| class | **[ecl::StandardLogicNode](classecl_1_1StandardLogicNode.md)**  |




## Source code

```cpp
/*
 * This file is part of the StandardizeLogic program.
 */

#ifndef __STANDARD_LOGIC_NODE_H__
#define __STANDARD_LOGIC_NODE_H__

#include <bitset>
#include <vector>
#include <map>


#include "syntax/parser/token.h"

namespace ecl {

constexpr size_t kMaxIdentifier = 64;


constexpr int kOperatorNull = 0;
constexpr int kOperatorOr = 1;
constexpr int kOperatorAnd = 2;

class StandardLogicNode {
public:



    StandardLogicNode(StandardLogicNode *parent, int type) noexcept;





    ~StandardLogicNode() = default;



    bool operator==(const StandardLogicNode &node) const noexcept;


    inline void FreeChildren() noexcept {
        for (StandardLogicNode *node : branches_) {
            node->FreeChildren();
            delete node;
        }
        return;
    }


    //-------------------------------------------------------------------------
    //                          methods for operator
    //------------------------------------------------------------------------- 

    inline int OperatorType() const noexcept {
        return op_type_;
    }


    inline std::string OperatorString() const noexcept {
        if (op_type_ == kOperatorNull) return "null";
        if (op_type_ == kOperatorOr) return "or";
        if (op_type_ == kOperatorAnd) return "and";
        return "error";
    }


    //-------------------------------------------------------------------------
    //                          methods for parent
    //------------------------------------------------------------------------- 

    inline int SetParent(StandardLogicNode *node) noexcept {
        parent_ = node;
        return 0;
    }


    inline StandardLogicNode* Parent() const noexcept {
        return parent_;
    }


    //-------------------------------------------------------------------------
    //                          methods for leaves
    //------------------------------------------------------------------------- 

    inline int AddLeaf(size_t index) noexcept {
        if (index >= kMaxIdentifier) return -1;
        leaves_.set(index);
        for (size_t i = 0; i < branches_.size(); ++i) {
            if (!BranchNecessary(i)) {
                branches_[i]->FreeChildren();
                delete branches_[i];
                DeleteBranch(i);
            }
        }
        return 0;
    }


    inline int AddLeaves(std::bitset<kMaxIdentifier> leaves) noexcept {
        leaves_ |= leaves;
        return 0;
    }


    inline int DeleteLeaf(size_t index) noexcept {
        if (index >= kMaxIdentifier) return -1;
        if (!leaves_.test(index)) return -2;
        leaves_.reset(index);
        return 0;
    }


    inline size_t LeafSize() const noexcept {
        return leaves_.count();
    }


    inline bool Leaf(size_t index) const noexcept {
        if (index >= kMaxIdentifier) return false;
        return leaves_.test(index);
    }


    inline std::bitset<kMaxIdentifier> Leaves() const noexcept {
        return leaves_;
    }


    bool IsOneLeaf(size_t &index) const noexcept;


    //-------------------------------------------------------------------------
    //                          methods for branches
    //------------------------------------------------------------------------- 

    int AddBranch(StandardLogicNode *node) noexcept;

    inline int SetBranch(size_t index, StandardLogicNode *node) noexcept {
        if (index >= branches_.size()) return -1;
        branches_[index] = node;
        return 0;
    }


    inline int DeleteBranch(size_t index) noexcept {
        if (index >= branches_.size()) return -1;
        auto it = branches_.begin();
        std::advance(it, index);
        branches_.erase(it);
        return 0;
    }


    inline StandardLogicNode* Branch(size_t index) const noexcept {
        if (index >= branches_.size()) return nullptr;
        return branches_[index];
    }


    inline size_t BranchSize() const noexcept {
        return branches_.size();
    }


    bool AddBranchNecessary(StandardLogicNode *node) const noexcept;


    bool BranchNecessary(size_t index, StandardLogicNode *node = nullptr) const noexcept;


    //-------------------------------------------------------------------------
    //                          methods for depth
    //------------------------------------------------------------------------- 

    int Depth() const noexcept;

    

    //-------------------------------------------------------------------------
    //                          methods for printing
    //------------------------------------------------------------------------- 

    void PrintString(std::ostream &os, std::vector<Identifier*> id_list) const noexcept;


    void PrintTree(std::vector<Identifier*> id_list, std::string prefix = "") const noexcept;



private:

    StandardLogicNode *parent_;                         // pointer to the parent node
    int op_type_;                                       // operator type
    std::vector<StandardLogicNode*> branches_;          // branches
    std::bitset<kMaxIdentifier> leaves_;                // leaves
};

}                   // namespace ecl

#endif              // __STANDARD_LOGIC_NODE_H__
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800
