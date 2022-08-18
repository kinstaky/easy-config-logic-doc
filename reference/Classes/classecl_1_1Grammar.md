---
title: ecl::Grammar

---

# ecl::Grammar



 [More...](#detailed-description)


`#include <grammar.h>`

## Public Functions

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

## Protected Attributes

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
template <typename VarType >
class ecl::Grammar;
```

## Public Functions Documentation

### function Grammar

```cpp
Grammar()
```

constructor 

### function ~Grammar

```cpp
virtual ~Grammar()
```

destructor 

### function AddProductionSet

```cpp
int AddProductionSet(
    ProductionFactorySet< VarType > * set,
    bool start =false
)
```

add production set to the grammar 

**Parameters**: 

  * **set** the set added to the grammar 
  * **start** this is the start set of the grammar 


**Return**: 0 on success, -1 on failure


@exceptsafe Shall not throw exceptions. 


### function IsComplete

```cpp
bool IsComplete()
```

check the completion of the grammar 

**Return**: true if this is complete, false incomplete


@exceptsafe Shall not throw exceptions. 


### function SymbolList

```cpp
std::vector< Symbol * > SymbolList() const
```

get the symbol list of this grammar 

**Return**: the symbol list


@exceptsafe Shall not throw exceptions. 


### function GenerateCollections

```cpp
int GenerateCollections(
    int look_ahead =0
)
```

generate the item collection of productions 

**Parameters**: 

  * **look_ahead** size of looking ahead characters 


**Return**: size of collections on success, -1 on failure


@exceptsafe Shall not throw exceptions. 


### function Collection

```cpp
inline ProductionItemCollection< VarType > * Collection(
    size_t index
)
```

get the collection through index 

**Parameters**: 

  * **index** index of the collection 


**Return**: the pointer to the specified collection, nullptr on failure


@exceptsafe Shall not throw exceptions. 


### function MakeClosure

```cpp
int MakeClosure(
    ProductionItem< VarType > * item,
    std::vector< ProductionItem< VarType > * > & closure
)
```

generate the non-core items in the core item closure 

**Parameters**: 

  * **item** item that generate the closure for 
  * **closure** closure to be generated 


**Return**: 0 on success, -1 on failure


@exceptsafe Shall not throw exceptions. 


### function NextItem

```cpp
ProductionItem< VarType > * NextItem(
    ProductionItem< VarType > * item,
    Symbol ** symbol
)
```

get the next item which receive one more symbol 

**Parameters**: 

  * **item** this item 
  * **symbol** the expected symbol of this item 


**Return**: the next item with one more symbol

**Note**: This function returns the next item and the moving symbol. For example, the input itme is "E -> E '.' + T". And here, '.' represents for the middle point of the item. It means that this item have received the production E, and expects the next symbol is '+' followed by production T. So the returnning next item will be "E -> E + '.' T" and the next symbol will be '+'.


@exceptsafe Shall not throw exceptions. 


### function CollectionGoto

```cpp
int CollectionGoto(
    size_t collection,
    size_t symbol
)
```

get the goto action through the collection and symbol index 

**Parameters**: 

  * **collection** the collection index 
  * **symbol** the symbol index 


**Return**: the collection index to go, or -1 on error


@exceptsafe Shall not throw exceptions. 


### function First

```cpp
std::vector< int > First(
    size_t set
)
```

find the possible first symbols of a non-terminal item 

**Parameters**: 

  * **set** the index of the production set 


**Return**: a set of symbols of possible first symbols


@exceptsafe Shall not throw exceptions. 


### function First

```cpp
std::vector< int > First(
    ProductionFactory< VarType > * production,
    size_t child
)
```

find the possible first symbols for a list of symbols 

**Parameters**: 

  * **production** the production which contains the list 
  * **child** the start index of the list 


**Return**: a set of symbol of possible first symbols

**Note**: This function finds the possible first symbols for a list of symbols and the list is part of the right-hand side of a production. So the list can be represented by a production and the index of child where ths list begins.


This is an overloaded member function, provided for convenience. It differs from the above function only in what argument(s) it accepts.

@exceptsafe Shall not throw exceptions. 


### function FirstIncludeEmpty

```cpp
int FirstIncludeEmpty(
    size_t set
)
```

whether a set contains null production as first symbol 

**Parameters**: 

  * **set** the index of the production set 


**Return**: 1 for true, 0 for false, -1 for error


@exceptsafe Shall not throw exceptions. 


### function FirstIncludeEmpty

```cpp
int FirstIncludeEmpty(
    ProductionFactory< VarType > * production,
    size_t child
)
```

whether a list of symbols contains null symbol as first symbol 

**Parameters**: 

  * **production** the production which contains the list 
  * **child** the start index of the list 


**Return**: 1 for true, 0 for false, -1 for error

**Note**: This function checks a list of symbols containing of null symbol and the list is part of the right-hand side of a production. So the list can be represented by a production and the index of child where ths list begins.


This is an overloaded member function, provided for convenience. It differs from the above function only in what argument(s) it accepts.

@exceptsafe Shall not throw exceptions. 


### function GenerateFirst

```cpp
int GenerateFirst()
```

gernerate the first list and first include empty vector 

**Return**: 0 on success, 1 on failure


@exceptsafe Shall not throw exceptions. 


### function Following

```cpp
std::vector< int > Following(
    size_t set
)
```

find the follwing symbol of a non-terminal symbol 

**Parameters**: 

  * **set** the index of the production set 


**Return**: vector of the follwing symbol index


@exceptsafe Shall not throw exceptions. 


### function GenerateFollowing

```cpp
int GenerateFollowing()
```

generate the following table 

**Return**: 0 on success, -1 on failure


@exceptsafe Shall not throw exceptions. 


### function FindSet

```cpp
int FindSet(
    ProductionFactorySet< VarType > * set
)
```

get the index of the production set 

**Parameters**: 

  * **set** the finding production set 


**Return**: the index of the production set, -1 on error


@exceptsafe Shall not throw exceptions. 


### function FindSymbol

```cpp
int FindSymbol(
    Symbol * symbol
)
```

get the index of the symbol 

**Parameters**: 

  * **symbol** finding symbol, includes production set and token 


**Return**: the index of the symbol, -1 on error


@exceptsafe Shall not throw exceptions. 


### function ProductionSetSize

```cpp
int ProductionSetSize() const
```

get the size of the production set 

**Return**: the size of the production set, or -1 on error


@exceptsafe Shall not throw exceptions. 


### function ProductionSet

```cpp
inline ProductionFactorySet< VarType > * ProductionSet(
    size_t index
) const
```

get the specific production set through index 

**Parameters**: 

  * **index** index of the production set 


**Return**: the specific production set, or nullptr for error


exceptsafe Shall not throw exceptions. 


## Protected Attributes Documentation

### variable production_sets_

```cpp
std::vector< ProductionFactorySet< VarType > * > production_sets_;
```


### variable symbol_list_

```cpp
std::vector< Symbol * > symbol_list_;
```


### variable generate_first_

```cpp
bool generate_first_;
```


### variable first_list_

```cpp
std::vector< std::set< int > > first_list_;
```


### variable first_include_empty_

```cpp
std::vector< bool > first_include_empty_;
```


### variable generate_following_

```cpp
bool generate_following_;
```


### variable following_list_

```cpp
std::vector< std::set< int > > following_list_;
```


### variable core_items_

```cpp
std::vector< ProductionItem< VarType > * > core_items_;
```


### variable non_core_items_

```cpp
std::vector< ProductionItem< VarType > * > non_core_items_;
```


### variable collections_

```cpp
std::vector< ProductionItemCollection< VarType > * > collections_;
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800