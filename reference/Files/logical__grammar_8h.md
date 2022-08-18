---
title: syntax/logical_grammar.h

---

# syntax/logical_grammar.h



## Namespaces

| Name           |
| -------------- |
| **[ecl](namespaceecl.md)**  |

## Classes

|                | Name           |
| -------------- | -------------- |
| class | **[ecl::LogicalGrammar](classecl_1_1LogicalGrammar.md)**  |




## Source code

```cpp
/*
 * This file defines the logic grammar class.
 */

#ifndef __LOGICAL_GRAMMAR_H__
#define __LOGICAL_GRAMMAR_H__

#include <string>
#include <vector>

#include "syntax/parser/grammar.h"


namespace ecl {

class LogicalGrammar final : public Grammar<bool> {
public:

    LogicalGrammar() noexcept;



    virtual ~LogicalGrammar() noexcept;


private:
    std::vector<Symbol*> symbols_;
};

}


#endif /* __LOGIC_GRAMMAR_H__ */
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800
