---
title: ecl::Lexer

---

# ecl::Lexer






`#include <lexer.h>`

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[Lexer](classecl_1_1Lexer.md#function-lexer)**() =default<br>default constructor  |
| | **[~Lexer](classecl_1_1Lexer.md#function-~lexer)**() =default<br>default destructor  |
| int | **[Analyse](classecl_1_1Lexer.md#function-analyse)**(const std::string & expr, std::vector< [TokenPtr](namespaceecl.md#typedef-tokenptr) > & tokens)<br>analyse a string and get token list  |

## Public Functions Documentation

### function Lexer

```cpp
Lexer() =default
```

default constructor 

### function ~Lexer

```cpp
~Lexer() =default
```

default destructor 

### function Analyse

```cpp
int Analyse(
    const std::string & expr,
    std::vector< TokenPtr > & tokens
)
```

analyse a string and get token list 

**Parameters**: 

  * **expr** the expression to analyse 
  * **tokens** the token list 


**Return**: 0 on success, -1 on invalid input

**Note**: this function is a simple lexer for logical expressions. It converts the logical expressions to the token list.


@exceptsafe Shall not throw exceptions. 


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800