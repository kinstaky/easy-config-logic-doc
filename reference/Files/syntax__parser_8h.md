---
title: syntax/parser/syntax_parser.h

---

# syntax/parser/syntax_parser.h



## Namespaces

| Name           |
| -------------- |
| **[ecl](namespaceecl.md)**  |

## Classes

|                | Name           |
| -------------- | -------------- |
| struct | **[ecl::Action](structecl_1_1Action.md)**  |
| class | **[ecl::ActionTable](classecl_1_1ActionTable.md)**  |
| class | **[ecl::SyntaxParser](classecl_1_1SyntaxParser.md)**  |
| class | **[ecl::SLRSyntaxParser](classecl_1_1SLRSyntaxParser.md)**  |




## Source code

```cpp
/*
 * This file is part of the context-free grammar parser library.
 */

#ifndef __SYNTAX_PARSER_H__
#define __SYNTAX_PARSER_H__

#include <map>
#include <vector>

#include "syntax/parser/grammar.h"
#include "syntax/parser/production.h"
#include "syntax/parser/token.h"

namespace ecl {

struct Action {
    static const int kTypeError = -1;
    static const int kTypeAccept = 0;
    static const int kTypeShift = 1;
    static const int kTypeGoto = 2;
    static const int kTypeReduce = 3;

    int type;
    int collection;
    void *production;
};


class ActionTable {
public:

    ActionTable(int collection_size, int symbol_size) noexcept;



    ~ActionTable() noexcept;


    int SetAction(int collection, int symbol, int type, int next) noexcept;



    int SetAction(int collection, int symbol, int type, void *production = nullptr) noexcept;


    Action* GetAction(int collection, int symbol) noexcept;

private:
    
    struct Action* table_;
    int collection_size_;
    int symbol_size_;
    int size_;
};



template<typename VarType>
class SyntaxParser {
public:


    SyntaxParser(Grammar<VarType> *grammar);


    virtual ~SyntaxParser() = default;


    virtual int Parse(const std::vector<TokenPtr>& tokens) = 0;


    int FindSymbol(TokenPtr token) noexcept;



    inline std::vector<Identifier*> IdentifierList() const noexcept {
        return identifier_list_;
    }


    int AttachIdentifier(const std::string &name, void *var_ptr) noexcept;


    int AttachIdentifier(size_t index, void *var_ptr) noexcept;


    // int AttachIdentifiers(void *var_ptr);

    // template<typename... VarTypes>
    // int AttachIdentifiers(void *var_ptr, VarTypes... ptrs);


    inline VarType Eval() const noexcept {
        return syntax_tree_root_->Eval();
    }

    // template<typename ArgType>
    // static VarType Evaluate(const std::string &expr, ArgType var_ptr);

    // template<typename... ArgTypes>
    // static VarType Evaluate(const std::string &expr, ArgTypes... var_ptrs);

    
    int PrintTree(Symbol *symbol, std::string prefix = "") const noexcept;


    
    inline Production<VarType>* Root() const noexcept {
        return syntax_tree_root_;
    }

protected:

    // template<typename... ArgTypes>
    // static void RecursiveAttach(int index, ArgTypes... var_ptrs);


    Grammar<VarType> *grammar_;
    Production<VarType> *syntax_tree_root_;
    std::vector<Symbol*> symbol_list_; 
    std::vector<Identifier*> identifier_list_;
};




template<typename VarType>
class SLRSyntaxParser final : public SyntaxParser<VarType> {
public:

    SLRSyntaxParser(Grammar<VarType> *grammar);


    virtual ~SLRSyntaxParser() noexcept;


    inline ActionTable* GetActionTable() const {
        return action_table_;
    }



    virtual int Parse(const std::vector<TokenPtr> &tokens);

private:

    ActionTable *action_table_;
};

}               // namespace ecl

#endif /* __SYNTAX_PARSER_H__ */
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800
