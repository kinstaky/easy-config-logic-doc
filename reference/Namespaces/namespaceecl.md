---
title: ecl

---

# ecl



## Classes

|                | Name           |
| -------------- | -------------- |
| struct | **[ecl::Action](structecl_1_1Action.md)**  |
| class | **[ecl::ActionTable](classecl_1_1ActionTable.md)**  |
| struct | **[ecl::DividerGateInfo](structecl_1_1DividerGateInfo.md)**  |
| struct | **[ecl::DividerInfo](structecl_1_1DividerInfo.md)**  |
| class | **[ecl::Grammar](classecl_1_1Grammar.md)**  |
| class | **[ecl::Identifier](classecl_1_1Identifier.md)**  |
| class | **[ecl::Lexer](classecl_1_1Lexer.md)**  |
| class | **[ecl::LogicalGrammar](classecl_1_1LogicalGrammar.md)**  |
| class | **[ecl::LogicComparer](classecl_1_1LogicComparer.md)**  |
| class | **[ecl::LogicParser](classecl_1_1LogicParser.md)**  |
| class | **[ecl::MemoryConfig](classecl_1_1MemoryConfig.md)**  |
| class | **[ecl::Operator](classecl_1_1Operator.md)**  |
| struct | **[ecl::OutputInfo](structecl_1_1OutputInfo.md)**  |
| class | **[ecl::Production](classecl_1_1Production.md)**  |
| class | **[ecl::ProductionBase](classecl_1_1ProductionBase.md)**  |
| class | **[ecl::ProductionFactory](classecl_1_1ProductionFactory.md)**  |
| class | **[ecl::ProductionFactorySet](classecl_1_1ProductionFactorySet.md)**  |
| class | **[ecl::ProductionItem](classecl_1_1ProductionItem.md)**  |
| class | **[ecl::ProductionItemCollection](classecl_1_1ProductionItemCollection.md)**  |
| class | **[ecl::SLRSyntaxParser](classecl_1_1SLRSyntaxParser.md)**  |
| class | **[ecl::StandardLogicNode](classecl_1_1StandardLogicNode.md)**  |
| class | **[ecl::Symbol](classecl_1_1Symbol.md)**  |
| class | **[ecl::SyntaxParser](classecl_1_1SyntaxParser.md)**  |
| class | **[ecl::Token](classecl_1_1Token.md)**  |

## Types

|                | Name           |
| -------------- | -------------- |
| typedef std::shared_ptr< [Token](classecl_1_1Token.md) > | **[TokenPtr](namespaceecl.md#typedef-tokenptr)**  |
| template <typename EvalType \> <br>using std::function< EvalType(const std::vector< [Symbol](classecl_1_1Symbol.md) * > &)> | **[ActionType](namespaceecl.md#using-actiontype)**  |

## Functions

|                | Name           |
| -------------- | -------------- |
| template <typename EvalType \> <br>EvalType | **[Evaluate](namespaceecl.md#function-evaluate)**([Symbol](classecl_1_1Symbol.md) * symbol)<br>helper function to evaluate symbol  |

## Attributes

|                | Name           |
| -------------- | -------------- |
| constexpr int | **[kSymbolType_ProductionItem](namespaceecl.md#variable-ksymboltype-productionitem)**  |
| constexpr int | **[kSymbolType_ProductionFactorySet](namespaceecl.md#variable-ksymboltype-productionfactoryset)**  |
| constexpr int | **[kSymbolType_ProductionFactory](namespaceecl.md#variable-ksymboltype-productionfactory)**  |
| constexpr int | **[kSymbolType_Production](namespaceecl.md#variable-ksymboltype-production)**  |
| constexpr int | **[kSymbolType_Identifier](namespaceecl.md#variable-ksymboltype-identifier)**  |
| constexpr int | **[kSymbolType_Operator](namespaceecl.md#variable-ksymboltype-operator)**  |
| const int | **[kMaxIdentifiers](namespaceecl.md#variable-kmaxidentifiers)**  |
| constexpr size_t | **[kMaxIdentifier](namespaceecl.md#variable-kmaxidentifier)**  |
| constexpr int | **[kOperatorNull](namespaceecl.md#variable-koperatornull)**  |
| constexpr int | **[kOperatorOr](namespaceecl.md#variable-koperatoror)**  |
| constexpr int | **[kOperatorAnd](namespaceecl.md#variable-koperatorand)**  |
| const size_t | **[kFrontIoNum](namespaceecl.md#variable-kfrontionum)**  |
| const size_t | **[kOrGatesOffset](namespaceecl.md#variable-korgatesoffset)**  |
| const size_t | **[kOrBits](namespaceecl.md#variable-korbits)**  |
| const size_t | **[kMaxOrGates](namespaceecl.md#variable-kmaxorgates)**  |
| const size_t | **[kAndGatesOffset](namespaceecl.md#variable-kandgatesoffset)**  |
| const size_t | **[kAndBits](namespaceecl.md#variable-kandbits)**  |
| const size_t | **[kMaxAndGates](namespaceecl.md#variable-kmaxandgates)**  |
| const size_t | **[kClocksOffset](namespaceecl.md#variable-kclocksoffset)**  |
| const size_t | **[kMaxClocks](namespaceecl.md#variable-kmaxclocks)**  |
| const size_t | **[kScalersOffset](namespaceecl.md#variable-kscalersoffset)**  |
| const size_t | **[kMaxScalers](namespaceecl.md#variable-kmaxscalers)**  |
| const size_t | **[kBackOffset](namespaceecl.md#variable-kbackoffset)**  |
| const size_t | **[kMaxBack](namespaceecl.md#variable-kmaxback)**  |
| const size_t | **[kDividersOffset](namespaceecl.md#variable-kdividersoffset)**  |
| const size_t | **[kMaxDividers](namespaceecl.md#variable-kmaxdividers)**  |
| const size_t | **[kDividerGatesOffset](namespaceecl.md#variable-kdividergatesoffset)**  |
| const size_t | **[kMaxDividerGates](namespaceecl.md#variable-kmaxdividergates)**  |
| const size_t | **[kPrimaryClockOffset](namespaceecl.md#variable-kprimaryclockoffset)**  |

## Types Documentation

### typedef TokenPtr

```cpp
typedef std::shared_ptr<Token> ecl::TokenPtr;
```


### using ActionType

```cpp
template <typename EvalType >
using ecl::ActionType = typedef std::function<EvalType(const std::vector<Symbol*>&)>;
```



## Functions Documentation

### function Evaluate

```cpp
template <typename EvalType >
EvalType Evaluate(
    Symbol * symbol
)
```

helper function to evaluate symbol 

**Parameters**: 

  * **symbol** pointer to the symbol being evaluated


**Exceptions**: 

  * **runtime_error** invalid symbol type or not evaluable symbol type 


**Template Parameters**: 

  * **EvalType** type of the expression evaluated 


**Return**: evaluation value

**Note**: This method helps generate the action function, since it handles the evaluation of all kinds of symbols.


## Attributes Documentation

### variable kSymbolType_ProductionItem

```cpp
constexpr int kSymbolType_ProductionItem = -4;
```


### variable kSymbolType_ProductionFactorySet

```cpp
constexpr int kSymbolType_ProductionFactorySet = -3;
```


### variable kSymbolType_ProductionFactory

```cpp
constexpr int kSymbolType_ProductionFactory = -2;
```


### variable kSymbolType_Production

```cpp
constexpr int kSymbolType_Production = -1;
```


### variable kSymbolType_Identifier

```cpp
constexpr int kSymbolType_Identifier = 1;
```


### variable kSymbolType_Operator

```cpp
constexpr int kSymbolType_Operator = 2;
```


### variable kMaxIdentifiers

```cpp
const int kMaxIdentifiers = 64;
```


### variable kMaxIdentifier

```cpp
constexpr size_t kMaxIdentifier = 64;
```


### variable kOperatorNull

```cpp
constexpr int kOperatorNull = 0;
```


### variable kOperatorOr

```cpp
constexpr int kOperatorOr = 1;
```


### variable kOperatorAnd

```cpp
constexpr int kOperatorAnd = 2;
```


### variable kFrontIoNum

```cpp
const size_t kFrontIoNum = 48;
```


### variable kOrGatesOffset

```cpp
const size_t kOrGatesOffset = kFrontIoNum;
```


### variable kOrBits

```cpp
const size_t kOrBits = kFrontIoNum;
```


### variable kMaxOrGates

```cpp
const size_t kMaxOrGates = 16;
```


### variable kAndGatesOffset

```cpp
const size_t kAndGatesOffset = kOrGatesOffset + kMaxOrGates;
```


### variable kAndBits

```cpp
const size_t kAndBits = kOrBits + kMaxOrGates;
```


### variable kMaxAndGates

```cpp
const size_t kMaxAndGates = 16;
```


### variable kClocksOffset

```cpp
const size_t kClocksOffset = kAndGatesOffset + kMaxAndGates;
```


### variable kMaxClocks

```cpp
const size_t kMaxClocks = 4;
```


### variable kScalersOffset

```cpp
const size_t kScalersOffset = kClocksOffset + kMaxClocks;
```


### variable kMaxScalers

```cpp
const size_t kMaxScalers = 32;
```


### variable kBackOffset

```cpp
const size_t kBackOffset = kScalersOffset + kMaxScalers;
```


### variable kMaxBack

```cpp
const size_t kMaxBack = 1;
```


### variable kDividersOffset

```cpp
const size_t kDividersOffset = kBackOffset + kMaxBack;
```


### variable kMaxDividers

```cpp
const size_t kMaxDividers = 4;
```


### variable kDividerGatesOffset

```cpp
const size_t kDividerGatesOffset = kDividersOffset + kMaxDividers;
```


### variable kMaxDividerGates

```cpp
const size_t kMaxDividerGates = 8;
```


### variable kPrimaryClockOffset

```cpp
const size_t kPrimaryClockOffset = kDividerGatesOffset + kMaxDividerGates;
```





-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800