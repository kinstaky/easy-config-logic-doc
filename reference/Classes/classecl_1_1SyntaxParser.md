---
title: ecl::SyntaxParser

---

# ecl::SyntaxParser



 [More...](#detailed-description)


`#include <syntax_parser.h>`

Inherited by [ecl::SLRSyntaxParser< VarType >](classecl_1_1SLRSyntaxParser.md)

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[SyntaxParser](classecl_1_1SyntaxParser.md#function-syntaxparser)**([Grammar](Classes/classecl_1_1Grammar.md)< VarType > * grammar)<br>initialize the parser according to the parse method  |
| virtual | **[~SyntaxParser](classecl_1_1SyntaxParser.md#function-~syntaxparser)**() =default<br>destructor  |
| virtual int | **[Parse](classecl_1_1SyntaxParser.md#function-parse)**(const std::vector< [TokenPtr](namespaceecl.md#typedef-tokenptr) > & tokens) =0<br>parse the tokens and generate the concrete syntax tree  |
| int | **[FindSymbol](classecl_1_1SyntaxParser.md#function-findsymbol)**([TokenPtr](namespaceecl.md#typedef-tokenptr) token)<br>search the token and return index  |
| std::vector< [Identifier](classecl_1_1Identifier.md) * > | **[IdentifierList](Classes/classecl_1_1SyntaxParser.md#function-identifierlist)**() const<br>get the identifier list  |
| int | **[AttachIdentifier](classecl_1_1SyntaxParser.md#function-attachidentifier)**(const std::string & name, void * var_ptr)<br>attach the variable to the identifiers through name  |
| int | **[AttachIdentifier](classecl_1_1SyntaxParser.md#function-attachidentifier)**(size_t index, void * var_ptr)<br>attach the variable to the identifiers through index  |
| VarType | **[Eval](classecl_1_1SyntaxParser.md#function-eval)**() const<br>evaluate the expression value  |
| int | **[PrintTree](classecl_1_1SyntaxParser.md#function-printtree)**([Symbol](Classes/classecl_1_1Symbol.md) * symbol, std::string prefix ="") const<br>print the tree structure of the concrete syntax tree  |
| [Production](classecl_1_1Production.md)< VarType > * | **[Root](Classes/classecl_1_1SyntaxParser.md#function-root)**() const<br>get the syntax tree root  |

## Protected Attributes

|                | Name           |
| -------------- | -------------- |
| [Grammar](classecl_1_1Grammar.md)< VarType > * | **[grammar_](Classes/classecl_1_1SyntaxParser.md#variable-grammar-)**  |
| [Production](classecl_1_1Production.md)< VarType > * | **[syntax_tree_root_](Classes/classecl_1_1SyntaxParser.md#variable-syntax-tree-root-)**  |
| std::vector< [Symbol](classecl_1_1Symbol.md) * > | **[symbol_list_](Classes/classecl_1_1SyntaxParser.md#variable-symbol-list-)**  |
| std::vector< [Identifier](classecl_1_1Identifier.md) * > | **[identifier_list_](Classes/classecl_1_1SyntaxParser.md#variable-identifier-list-)**  |

## Detailed Description

```cpp
template <typename VarType >
class ecl::SyntaxParser;
```


**Template Parameters**: 

  * **VarType** the return type of the Evaluate function 


The [SyntaxParser](classecl_1_1SyntaxParser.md) class is the abstract base class of the syntax parser. The syntax parser is attached with a kind of grammar, and then parse the token list and generate the syntax tree. All the derived classes should override the abstract function [Parse()](Classes/classecl_1_1SyntaxParser.md#function-parse).

## Public Functions Documentation

### function SyntaxParser

```cpp
SyntaxParser(
    Grammar< VarType > * grammar
)
```

initialize the parser according to the parse method 

**Parameters**: 

  * **grammar** pointer to the parsing grammar 
  * **method** parse method, default is LR(0) and choose this when meet illegal input method



@exceptsafe Shall not throw exceptions. 


### function ~SyntaxParser

```cpp
virtual ~SyntaxParser() =default
```

destructor 

### function Parse

```cpp
virtual int Parse(
    const std::vector< TokenPtr > & tokens
) =0
```

parse the tokens and generate the concrete syntax tree 

**Parameters**: 

  * **tokens** the token list to parse 


**Return**: 0 on success, -1 on failure 

**Note**: Parse the tokens from the lexical parser and generate the concrete syntax tree. The generated syntax tree root will be saved. And this is an abstract method, since thera different parse methods.

**Reimplemented by**: [ecl::SLRSyntaxParser::Parse](classecl_1_1SLRSyntaxParser.md#function-parse), [ecl::SLRSyntaxParser::Parse](Classes/classecl_1_1SLRSyntaxParser.md#function-parse)


### function FindSymbol

```cpp
int FindSymbol(
    TokenPtr token
)
```

search the token and return index 

**Parameters**: 

  * **token** shared pointer to the token 


**Return**: index of the token, -1 on failure


@exceptsafe Shall not throw exceptions. 


### function IdentifierList

```cpp
inline std::vector< Identifier * > IdentifierList() const
```

get the identifier list 

**Return**: the identifier list


@exceptsafe Shall not throw exceptions. 


### function AttachIdentifier

```cpp
int AttachIdentifier(
    const std::string & name,
    void * var_ptr
)
```

attach the variable to the identifiers through name 

**Parameters**: 

  * **name** name of the identifier 
  * **var_ptr** pointer to the attached variable


**Return**: 0 on success, -1 on variable pointer invalid, -2 on identifier name invalid

**Note**: The expression may have some identitfiers and the variables should be attached to them before evaluating the expression.


@exceptsafe Shall not throw exceptions. 


### function AttachIdentifier

```cpp
int AttachIdentifier(
    size_t index,
    void * var_ptr
)
```

attach the variable to the identifiers through index 

**Parameters**: 

  * **index** index of the identifier 
  * **var_ptr** pointer to the attached variable 


**Return**: 0 on success, -1 on variable pointer invalid, -2 on index invalid

**Note**: The index of the variable is determined by the order from head to tail in the expression.


This is an overloaded member function, provided for convenience. It differs from the above function only in what argument(s) it accepts.

@exceptsafe Shall not throw exceptions. 


### function Eval

```cpp
inline VarType Eval() const
```

evaluate the expression value 

**Return**: the expression value

**Note**: Evaluate the expression value through action.


@exceptsafe Shall not throw exceptions. 


### function PrintTree

```cpp
int PrintTree(
    Symbol * symbol,
    std::string prefix =""
) const
```

print the tree structure of the concrete syntax tree 

**Parameters**: 

  * **symbol** the symbol to print 
  * **prefix** the prefix string, default is empty string 


**Return**: 0 on success, -1 on failure


@exceptsafe Shall not throw exceptions. 


### function Root

```cpp
inline Production< VarType > * Root() const
```

get the syntax tree root 

**Return**: pointer to the root production


@exceptsafe Shall not throw exceptions. 


## Protected Attributes Documentation

### variable grammar_

```cpp
Grammar< VarType > * grammar_;
```


### variable syntax_tree_root_

```cpp
Production< VarType > * syntax_tree_root_;
```


### variable symbol_list_

```cpp
std::vector< Symbol * > symbol_list_;
```


### variable identifier_list_

```cpp
std::vector< Identifier * > identifier_list_;
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800