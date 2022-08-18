---
title: syntax/logic_comparer.h

---

# syntax/logic_comparer.h



## Namespaces

| Name           |
| -------------- |
| **[ecl](namespaceecl.md)**  |

## Classes

|                | Name           |
| -------------- | -------------- |
| class | **[ecl::LogicComparer](classecl_1_1LogicComparer.md)**  |




## Source code

```cpp
#ifndef __LOGIC_COMPARER_H__
#define __LOGIC_COMPARER_H__

#include <vector>
#include <map>
#include <bitset>

#include "syntax/parser/token.h"
#include "syntax/parser/lexer.h"
#include "syntax/parser/syntax_parser.h"
#include "syntax/logical_grammar.h"

namespace ecl {

const int kMaxIdentifiers = 64;

class LogicComparer {
public:

    LogicComparer() noexcept;



    ~LogicComparer() noexcept;


    bool Compare(const std::string &line1, const std::string &line2) noexcept;


private:

    const int kOperatorNull = 0;
    const int kOperatorOr = 1;
    const int kOperatorAnd = 2;
    struct Node {
        int op_type;
        size_t size;
        struct Node* children[2];
        Identifier *id;
        bool cache_value;
        std::bitset<kMaxIdentifiers> id_flag;
    };


    int GenerateNodes();


    int ParseE(Production<bool> *production, struct Node* node, int layer);


    int ParseT(Production<bool> *production, struct Node* node, int layer);


    bool CompareValues();

    bool Evaluate(struct Node *node, std::bitset<kMaxIdentifiers> change);


    void FreeChildren(struct Node *node);


    void PrintTree(struct Node *node, std::string prefix = "");



    Lexer lexer_[2];
    LogicalGrammar grammar_[2];
    SLRSyntaxParser<bool> parser_[2];
    std::vector<bool> is_irrelevant_[2];


    struct Node* tree_root_[2];

    struct IdentifierInfo {
        Identifier *id;
        size_t index;
        int layer;
    };
    std::vector<IdentifierInfo> id_list_;
    std::vector<bool> results_;
};

}               // namespace ecl

#endif
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800
