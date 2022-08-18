---
title: syntax/parser/production.h

---

# syntax/parser/production.h



## Namespaces

| Name           |
| -------------- |
| **[ecl](namespaceecl.md)**  |

## Classes

|                | Name           |
| -------------- | -------------- |
| class | **[ecl::ProductionBase](classecl_1_1ProductionBase.md)**  |
| class | **[ecl::Production](classecl_1_1Production.md)**  |
| class | **[ecl::ProductionItem](classecl_1_1ProductionItem.md)**  |
| class | **[ecl::ProductionFactory](classecl_1_1ProductionFactory.md)**  |
| class | **[ecl::ProductionFactorySet](classecl_1_1ProductionFactorySet.md)**  |
| class | **[ecl::ProductionItem](classecl_1_1ProductionItem.md)**  |
| class | **[ecl::ProductionItemCollection](classecl_1_1ProductionItemCollection.md)**  |




## Source code

```cpp
/*
 * This file is part of the context-free grammar library.
 *
 */

#ifndef __PRODUCTION_H__
#define __PRODUCTION_H__

#include <exception>
#include <functional>
#include <map>
#include <memory>
#include <set>
#include <stack>
#include <vector>

#include "syntax/parser/token.h"

namespace ecl {

template<typename EvalType>
using ActionType = std::function<EvalType(const std::vector<Symbol*>&)>;


class ProductionBase : public Symbol {
public:

    ProductionBase(Symbol *parent, size_t size, int type) noexcept;



    virtual ~ProductionBase() = default;


    inline int SetParent(ProductionBase *parent) noexcept {
        parent_ = parent;
        return 0;
    }


    inline Symbol* Parent() const noexcept {
        return parent_;
    }
 

    inline size_t size() const noexcept {
        return children_.size();
    }


    int SetChild(size_t index, Symbol *child) noexcept;


    int SetChildren(Symbol *child) noexcept;


    template<typename... ArgTypes>
    int SetChildren(Symbol *first, ArgTypes... children) noexcept {
        // first child
        if (setting_child_ == -1) {
            for (size_t i = 0; i != children_size_; ++i) {
                children_[i] = nullptr;
            }
            setting_child_ = 0;
        }

        // set child
        if (setting_child_ >= int(children_size_)) {
            return -1;
        }
        children_[setting_child_] = first;

        // recursively set children
        ++setting_child_;
        return SetChildren(children...);
    }


    inline Symbol* Child(size_t index) const noexcept {
        return children_[index];
    }


    inline bool IsComplete() const noexcept {
        for (auto child : children_) {
            if (!child) return false;
        }
        return true;
    }


    

protected:

    Symbol *parent_;

    size_t children_size_;      // size of the symbols on the right side of production
    std::vector<Symbol*> children_;             // symbols of this production

private:
    int setting_child_;                         // flag showing setting children
};




template<typename EvalType>
class Production final : public ProductionBase {
public:

    Production(
        Symbol *parent, 
        size_t size, 
        ActionType<EvalType> *action, 
        Symbol *origin = nullptr
    ) noexcept;


    ~Production() = default;


    inline EvalType Eval() const noexcept {
        if (action_) {
            return (*action_)(children_);
        } else {
            return static_cast<EvalType>(0);
        }
    }


    inline Symbol* Origin() const noexcept {
        return origin_;
    }




private:
    ActionType<EvalType> *action_;              // action when evaluating
    Symbol *origin_;        // origin of the production
};



template<typename EvalType>
class ProductionItem;

template<typename EvalType>
class ProductionFactory final : public ProductionBase {
public:


    ProductionFactory(Symbol *parent, size_t size, const ActionType<EvalType> &action = nullptr) noexcept;



    virtual ~ProductionFactory() noexcept;



    Production<EvalType>* CreateProduction(std::stack<Symbol*> symbols) noexcept;



    ProductionItem<EvalType>* GenerateItems() noexcept;


    ProductionItem<EvalType> *Item(size_t index) noexcept;

private:
    ActionType<EvalType> action_;               // action when evaluating

    size_t generating_item_;                        // the next item index to generate
    std::vector<ProductionItem<EvalType>*> items_;  // the generated items
};



template<typename EvalType>
class ProductionFactorySet final : public Symbol {
public:

    ProductionFactorySet();

    ~ProductionFactorySet() = default;

    int AddProductionFactory(ProductionFactory<EvalType>* production) noexcept;


    inline ProductionFactory<EvalType>* operator[](size_t index) const noexcept {
        return productions_[index];
    }


    inline bool IsComplete() const noexcept {
        for (auto p : productions_) {
            if (!p->IsComplete()) return false;
        }
        return true;
    }


    inline auto begin() noexcept {
        return productions_.begin();
    }
    
    
    inline auto end() noexcept {
        return productions_.end();
    }


    inline auto size() const noexcept {
        return productions_.size();
    }
    

private:
    std::vector<ProductionFactory<EvalType>*> productions_;
};



template<typename EvalType>
class ProductionItem final : public ProductionBase {
public:
    
    ProductionItem(
        Symbol *parent,
        size_t size,
        size_t index,
        ProductionFactory<EvalType> *origin
    ) noexcept;


    virtual ~ProductionItem() = default;


    inline ProductionFactory<EvalType>* Origin() const noexcept {
        return origin_;
    }


    // /// @brief get the parent of the item
    // /// @note This method gets the pointer to the parent of this item,
    // ///  i.e. the ProductionFactorySet on the left hand side of the
    // ///      production.
    // ///
    // /// @returns the parent of the item
    // /// 
    // /// @exceptsafe Shall not throw exceptions.
    // ///
    // inline ProductionFactorySet<EvalType>* Parent() const noexcept;



    inline Symbol* ExpectedSymbol() const noexcept {
        return IsLast() ? nullptr : children_[item_index_];
    }


    inline bool IsLast() const noexcept {
        return item_index_ == children_size_;
    }


    inline size_t Index() const noexcept {
        return item_index_;
    }

    
private:
    size_t item_index_;                             // index of this item

    // The ProductionFactory generates this item. 
    ProductionFactory<EvalType> *origin_;
};



template<typename EvalType>
class ProductionItemCollection {
public:
    
    ProductionItemCollection() = default;


    ~ProductionItemCollection() = default;


    int AddItem(ProductionItem<EvalType> *item, bool core) noexcept;
    

    ProductionItemCollection<EvalType>* Goto(Symbol *symbol) const noexcept;


    inline int SetGoto(Symbol *symbol, ProductionItemCollection<EvalType> *collection) noexcept {
        const auto result = goto_table_.insert(std::make_pair(symbol, collection));
        return result.second ? 0 : -1;
    }


    inline auto begin() noexcept {
        return items_.begin();
    }
    
    
    inline auto end() noexcept {
        return items_.end();
    }


    inline auto size() const noexcept {
        return items_.size();
    }


private:
    std::vector<ProductionItem<EvalType>*> items_;
    std::vector<ProductionItem<EvalType>*> core_items_;
    std::vector<ProductionItem<EvalType>*> non_core_items_;

    std::map<Symbol*, ProductionItemCollection<EvalType>*> goto_table_;
};




template<typename EvalType>
EvalType Evaluate(Symbol *symbol) {
    EvalType result;
    switch (symbol->Type()) {
        case kSymbolType_Production:
            result = ((Production<EvalType>*)symbol)->Eval();
            break;
        case kSymbolType_Identifier:
            result = *(static_cast<EvalType*>(((Identifier*)symbol)->GetAttached()));
            break;
        case kSymbolType_Operator:
            throw std::runtime_error("operator symbol");
        case kSymbolType_ProductionFactory:
            throw std::runtime_error("production factory symbol");
        case kSymbolType_ProductionFactorySet:
            throw std::runtime_error("production factory set symbol");
        default:
            throw std::runtime_error("invalid symbol type");
    }
    return result;
}


}               // namespace ecl

#endif /* __PRODUCTION_H__ */
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800
