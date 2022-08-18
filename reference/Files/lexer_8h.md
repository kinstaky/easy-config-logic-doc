---
title: syntax/parser/lexer.h

---

# syntax/parser/lexer.h



## Namespaces

| Name           |
| -------------- |
| **[ecl](namespaceecl.md)**  |

## Classes

|                | Name           |
| -------------- | -------------- |
| class | **[ecl::Lexer](classecl_1_1Lexer.md)**  |




## Source code

```cpp
/*
 * This file is part of the context-free grammar library.
 */

#ifndef __LEXER_H__
#define __LEXER_H__

#include <memory>
#include <string>
#include <vector>

#include "syntax/parser/token.h"


namespace ecl {

class Lexer {
public:



    Lexer() = default;


    ~Lexer() = default;



    int Analyse(const std::string &expr, std::vector<TokenPtr> &tokens);
};

}               // namespace ecl


#endif /* __LEXER_H__ */
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800
