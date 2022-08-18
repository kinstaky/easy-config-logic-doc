---
title: ecl::SLRSyntaxParser

---

# ecl::SLRSyntaxParser



 [More...](#detailed-description)


`#include <syntax_parser.h>`

Inherits from [ecl::SyntaxParser< VarType >](classecl_1_1SyntaxParser.md)

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[SLRSyntaxParser](classecl_1_1SLRSyntaxParser.md#function-slrsyntaxparser)**([Grammar](Classes/classecl_1_1Grammar.md)< VarType > * grammar)<br>constructor  |
| virtual | **[~SLRSyntaxParser](classecl_1_1SLRSyntaxParser.md#function-~slrsyntaxparser)**()<br>destructor  |
| [ActionTable](classecl_1_1ActionTable.md) * | **[GetActionTable](Classes/classecl_1_1SLRSyntaxParser.md#function-getactiontable)**() const<br>get action table  |
| virtual int | **[Parse](classecl_1_1SLRSyntaxParser.md#function-parse)**(const std::vector< [TokenPtr](namespaceecl.md#typedef-tokenptr) > & tokens)<br>parse the token list and generate symbol table and syntax tree  |

## Additional inherited members

**Public Functions inherited from [ecl::SyntaxParser< VarType >](classecl_1_1SyntaxParser.md)**

|                | Name           |
| -------------- | -------------- |
| | **[SyntaxParser](classecl_1_1SyntaxParser.md#function-syntaxparser)**([Grammar](Classes/classecl_1_1Grammar.md)< VarType > * grammar)<br>initialize the parser according to the parse method  |
| virtual | **[~SyntaxParser](classecl_1_1SyntaxParser.md#function-~syntaxparser)**() =default<br>destructor  |
| int | **[FindSymbol](classecl_1_1SyntaxParser.md#function-findsymbol)**([TokenPtr](namespaceecl.md#typedef-tokenptr) token)<br>search the token and return index  |
| std::vector< [Identifier](classecl_1_1Identifier.md) * > | **[IdentifierList](Classes/classecl_1_1SyntaxParser.md#function-identifierlist)**() const<br>get the identifier list  |
| int | **[AttachIdentifier](classecl_1_1SyntaxParser.md#function-attachidentifier)**(const std::string & name, void * var_ptr)<br>attach the variable to the identifiers through name  |
| int | **[AttachIdentifier](classecl_1_1SyntaxParser.md#function-attachidentifier)**(size_t index, void * var_ptr)<br>attach the variable to the identifiers through index  |
| VarType | **[Eval](classecl_1_1SyntaxParser.md#function-eval)**() const<br>evaluate the expression value  |
| int | **[PrintTree](classecl_1_1SyntaxParser.md#function-printtree)**([Symbol](Classes/classecl_1_1Symbol.md) * symbol, std::string prefix ="") const<br>print the tree structure of the concrete syntax tree  |
| [Production](classecl_1_1Production.md)< VarType > * | **[Root](Classes/classecl_1_1SyntaxParser.md#function-root)**() const<br>get the syntax tree root  |

**Protected Attributes inherited from [ecl::SyntaxParser< VarType >](classecl_1_1SyntaxParser.md)**

|                | Name           |
| -------------- | -------------- |
| [Grammar](classecl_1_1Grammar.md)< VarType > * | **[grammar_](Classes/classecl_1_1SyntaxParser.md#variable-grammar-)**  |
| [Production](classecl_1_1Production.md)< VarType > * | **[syntax_tree_root_](Classes/classecl_1_1SyntaxParser.md#variable-syntax-tree-root-)**  |
| std::vector< [Symbol](classecl_1_1Symbol.md) * > | **[symbol_list_](Classes/classecl_1_1SyntaxParser.md#variable-symbol-list-)**  |
| std::vector< [Identifier](classecl_1_1Identifier.md) * > | **[identifier_list_](Classes/classecl_1_1SyntaxParser.md#variable-identifier-list-)**  |


## Detailed Description

```cpp
template <typename VarType >
class ecl::SLRSyntaxParser;
```

## Public Functions Documentation

### function SLRSyntaxParser

```cpp
SLRSyntaxParser(
    Grammar< VarType > * grammar
)
```

constructor 

**Parameters**: 

  * **grammar** pointer to the parsing grammar 


**Note**: This function firstly gernerates the grammar item and collection, and generates the action table secondly.

### function ~SLRSyntaxParser

```cpp
virtual ~SLRSyntaxParser()
```

destructor 

@exceptsafe Shall not throw exceptions. 


### function GetActionTable

```cpp
inline ActionTable * GetActionTable() const
```

get action table 

**Return**: the pointer to the action table


@exceptsafe Shall not throw exceptions. 


### function Parse

```cpp
virtual int Parse(
    const std::vector< TokenPtr > & tokens
)
```

parse the token list and generate symbol table and syntax tree 

**Parameters**: 

  * **tokens** input token list from lexer 


**Return**: 0 on success, -1 on failure 

**Note**: This functions parse the token list and generate the symbol table and the syntax tree. The symbols in the table are in the order of the token list, and one symbol occupies one slot in the table. The concrete syntax tree locate in the syntax_tree_root_ and was generated based on the grammar.

**Reimplements**: [ecl::SyntaxParser::Parse](classecl_1_1SyntaxParser.md#function-parse)


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800