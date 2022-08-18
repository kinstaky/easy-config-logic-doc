---
title: syntax/parser/token.h

---

# syntax/parser/token.h



## Namespaces

| Name           |
| -------------- |
| **[ecl](namespaceecl.md)**  |

## Classes

|                | Name           |
| -------------- | -------------- |
| class | **[ecl::Symbol](classecl_1_1Symbol.md)**  |
| class | **[ecl::Token](classecl_1_1Token.md)**  |
| class | **[ecl::Identifier](classecl_1_1Identifier.md)**  |
| class | **[ecl::Operator](classecl_1_1Operator.md)**  |




## Source code

```cpp
/*
 * This file defines the terminal tokens in the context-free grammar.
 */

#ifndef __TOKEN_H__
#define __TOKEN_H__

#include <memory>
#include <string>

namespace ecl {

constexpr int kSymbolType_ProductionItem = -4;
constexpr int kSymbolType_ProductionFactorySet = -3;
constexpr int kSymbolType_ProductionFactory = -2;
constexpr int kSymbolType_Production = -1;
constexpr int kSymbolType_Identifier = 1;
constexpr int kSymbolType_Operator = 2;

class Symbol {
public:

    Symbol(int type) noexcept;


    virtual ~Symbol() = default;



    inline int Type() const noexcept {
        return type_;
    }

private:
    int type_;
};



class Token: public Symbol {
public:

    Token(int type, const std::string &value) noexcept;



    virtual ~Token() = default;


    inline std::string Value() const noexcept {
        return value_;
    }

private:
    std::string value_;                 // string value of this token
};


typedef std::shared_ptr<Token> TokenPtr;


class Identifier final : public Token {
public:

    Identifier(const std::string &value) noexcept;


    Identifier(char value) noexcept;


    virtual ~Identifier() = default;


    int Attach(void *var_ptr) noexcept;


    void* GetAttached() const noexcept;

private:
    void *attached_;
};




class Operator final : public Token {
public:

    Operator(const std::string &value) noexcept;


    Operator(char value) noexcept;



    virtual ~Operator() = default;

private:

};

}               // namespace ecl

#endif /* __TOKEN_H__ */
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800
