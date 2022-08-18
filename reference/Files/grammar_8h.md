---
title: syntax/parser/grammar.h

---

# syntax/parser/grammar.h



## Namespaces

| Name           |
| -------------- |
| **[ecl](namespaceecl.md)**  |

## Classes

|                | Name           |
| -------------- | -------------- |
| class | **[ecl::Grammar](classecl_1_1Grammar.md)**  |




## Source code

```cpp
/*
 * This file is part of the context-free grammar library.
 */


#ifndef __GRAMMAR_H__
#define __GRAMMAR_H__

#include <map>
#include <set>
#include <string>
#include <vector>

#include "syntax/parser/production.h"
#include "syntax/parser/token.h"

namespace ecl {

template<typename VarType>
class Grammar {
public:

    Grammar() noexcept;

    virtual ~Grammar() noexcept;

    int AddProductionSet(ProductionFactorySet<VarType> *set, bool start = false) noexcept;



    bool IsComplete() noexcept;


    std::vector<Symbol*> SymbolList() const noexcept;



    int GenerateCollections(int look_ahead = 0) noexcept;


    inline ProductionItemCollection<VarType>* Collection(size_t index) noexcept {
        if (index >= collections_.size()) {
            return nullptr;
        }
        return collections_[index];
    }



    int MakeClosure(ProductionItem<VarType> *item, std::vector<ProductionItem<VarType>*>  &closure) noexcept;


    ProductionItem<VarType>* NextItem(ProductionItem<VarType> *item, Symbol **symbol) noexcept;
    


    int CollectionGoto(size_t collection, size_t symbol) noexcept;


    std::vector<int> First(size_t set) noexcept;


    std::vector<int> First(ProductionFactory<VarType> *production, size_t child) noexcept;



    int FirstIncludeEmpty(size_t set) noexcept;



    int FirstIncludeEmpty(ProductionFactory<VarType> *production, size_t child) noexcept;



    int GenerateFirst() noexcept;



    std::vector<int> Following(size_t set) noexcept;


    int GenerateFollowing() noexcept;


    int FindSet(ProductionFactorySet<VarType> *set) noexcept;


    int FindSymbol(Symbol *symbol) noexcept;


    int ProductionSetSize() const noexcept;


    inline ProductionFactorySet<VarType>* ProductionSet(size_t index) const noexcept {
        if (index < 0 || index >= production_sets_.size()) {
            return nullptr;
        }
        return production_sets_[index];
    }

protected:


    std::vector<ProductionFactorySet<VarType>*> production_sets_;
    std::vector<Symbol*> symbol_list_;

    bool generate_first_;               // whether has generated first list
    std::vector<std::set<int>> first_list_;
    std::vector<bool> first_include_empty_;


    bool generate_following_;                   // show whether has generated following list
    std::vector<std::set<int>> following_list_;




    std::vector<ProductionItem<VarType>*> core_items_;      // generated core items
    std::vector<ProductionItem<VarType>*> non_core_items_;  // generated non core items
    std::vector<ProductionItemCollection<VarType>*> collections_;   // collection of items

};

}               // namespace ecl

#endif /* __GRAMMAR_H__ */
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800
