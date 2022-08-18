---
title: ecl::LogicalGrammar

---

# ecl::LogicalGrammar



 [More...](#detailed-description)


`#include <logical_grammar.h>`

Inherits from [ecl::Grammar< bool >](classecl_1_1Grammar.md)

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[LogicalGrammar](classecl_1_1LogicalGrammar.md#function-logicalgrammar)**()<br>constructor  |
| virtual | **[~LogicalGrammar](classecl_1_1LogicalGrammar.md#function-~logicalgrammar)**()<br>destructor  |

## Additional inherited members

**Public Functions inherited from [ecl::Grammar< bool >](classecl_1_1Grammar.md)**

|                | Name           |
| -------------- | -------------- |
| | **[Grammar](classecl_1_1Grammar.md#function-grammar)**()<br>constructor  |
| virtual | **[~Grammar](classecl_1_1Grammar.md#function-~grammar)**()<br>destructor  |
| int | **[AddProductionSet](classecl_1_1Grammar.md#function-addproductionset)**([ProductionFactorySet](Classes/classecl_1_1ProductionFactorySet.md)< VarType > * set, bool start =false)<br>add production set to the grammar  |
| bool | **[IsComplete](classecl_1_1Grammar.md#function-iscomplete)**()<br>check the completion of the grammar  |
| std::vector< [Symbol](classecl_1_1Symbol.md) * > | **[SymbolList](Classes/classecl_1_1Grammar.md#function-symbollist)**() const<br>get the symbol list of this grammar  |
| int | **[GenerateCollections](classecl_1_1Grammar.md#function-generatecollections)**(int look_ahead =0)<br>generate the item collection of productions  |
| [ProductionItemCollection](classecl_1_1ProductionItemCollection.md)< VarType > * | **[Collection](Classes/classecl_1_1Grammar.md#function-collection)**(size_t index)<br>get the collection through index  |
| int | **[MakeClosure](classecl_1_1Grammar.md#function-makeclosure)**([ProductionItem](Classes/classecl_1_1ProductionItem.md)< VarType > * item, std::vector< [ProductionItem](Classes/classecl_1_1ProductionItem.md)< VarType > * > & closure)<br>generate the non-core items in the core item closure  |
| [ProductionItem](classecl_1_1ProductionItem.md)< VarType > * | **[NextItem](Classes/classecl_1_1Grammar.md#function-nextitem)**([ProductionItem](Classes/classecl_1_1ProductionItem.md)< VarType > * item, [Symbol](Classes/classecl_1_1Symbol.md) ** symbol)<br>get the next item which receive one more symbol  |
| int | **[CollectionGoto](classecl_1_1Grammar.md#function-collectiongoto)**(size_t collection, size_t symbol)<br>get the goto action through the collection and symbol index  |
| std::vector< int > | **[First](classecl_1_1Grammar.md#function-first)**(size_t set)<br>find the possible first symbols of a non-terminal item  |
| std::vector< int > | **[First](classecl_1_1Grammar.md#function-first)**([ProductionFactory](Classes/classecl_1_1ProductionFactory.md)< VarType > * production, size_t child)<br>find the possible first symbols for a list of symbols  |
| int | **[FirstIncludeEmpty](classecl_1_1Grammar.md#function-firstincludeempty)**(size_t set)<br>whether a set contains null production as first symbol  |
| int | **[FirstIncludeEmpty](classecl_1_1Grammar.md#function-firstincludeempty)**([ProductionFactory](Classes/classecl_1_1ProductionFactory.md)< VarType > * production, size_t child)<br>whether a list of symbols contains null symbol as first symbol  |
| int | **[GenerateFirst](classecl_1_1Grammar.md#function-generatefirst)**()<br>gernerate the first list and first include empty vector  |
| std::vector< int > | **[Following](classecl_1_1Grammar.md#function-following)**(size_t set)<br>find the follwing symbol of a non-terminal symbol  |
| int | **[GenerateFollowing](classecl_1_1Grammar.md#function-generatefollowing)**()<br>generate the following table  |
| int | **[FindSet](classecl_1_1Grammar.md#function-findset)**([ProductionFactorySet](Classes/classecl_1_1ProductionFactorySet.md)< VarType > * set)<br>get the index of the production set  |
| int | **[FindSymbol](classecl_1_1Grammar.md#function-findsymbol)**([Symbol](Classes/classecl_1_1Symbol.md) * symbol)<br>get the index of the symbol  |
| int | **[ProductionSetSize](classecl_1_1Grammar.md#function-productionsetsize)**() const<br>get the size of the production set  |
| [ProductionFactorySet](classecl_1_1ProductionFactorySet.md)< VarType > * | **[ProductionSet](Classes/classecl_1_1Grammar.md#function-productionset)**(size_t index) const<br>get the specific production set through index  |

**Protected Attributes inherited from [ecl::Grammar< bool >](classecl_1_1Grammar.md)**

|                | Name           |
| -------------- | -------------- |
| std::vector< [ProductionFactorySet](classecl_1_1ProductionFactorySet.md)< VarType > * > | **[production_sets_](Classes/classecl_1_1Grammar.md#variable-production-sets-)**  |
| std::vector< [Symbol](classecl_1_1Symbol.md) * > | **[symbol_list_](Classes/classecl_1_1Grammar.md#variable-symbol-list-)**  |
| bool | **[generate_first_](classecl_1_1Grammar.md#variable-generate-first-)**  |
| std::vector< std::set< int > > | **[first_list_](classecl_1_1Grammar.md#variable-first-list-)**  |
| std::vector< bool > | **[first_include_empty_](classecl_1_1Grammar.md#variable-first-include-empty-)**  |
| bool | **[generate_following_](classecl_1_1Grammar.md#variable-generate-following-)**  |
| std::vector< std::set< int > > | **[following_list_](classecl_1_1Grammar.md#variable-following-list-)**  |
| std::vector< [ProductionItem](classecl_1_1ProductionItem.md)< VarType > * > | **[core_items_](Classes/classecl_1_1Grammar.md#variable-core-items-)**  |
| std::vector< [ProductionItem](classecl_1_1ProductionItem.md)< VarType > * > | **[non_core_items_](Classes/classecl_1_1Grammar.md#variable-non-core-items-)**  |
| std::vector< [ProductionItemCollection](classecl_1_1ProductionItemCollection.md)< VarType > * > | **[collections_](Classes/classecl_1_1Grammar.md#variable-collections-)**  |


## Detailed Description

```cpp
class ecl::LogicalGrammar;
```


This class represents a logical grammar that only includes operations and '&' and or '|'. The context-free grammar is: 0. S -> E

1. E -> E | T
    * E -> E & T
2. E -> T
3. T -> ( E )
4. T -> id 

## Public Functions Documentation

### function LogicalGrammar

```cpp
LogicalGrammar()
```

constructor 

@exceptsafe Shall not throw exceptions. 


### function ~LogicalGrammar

```cpp
virtual ~LogicalGrammar()
```

destructor 

@exceptsafe Shall not throw exceptions. 


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800