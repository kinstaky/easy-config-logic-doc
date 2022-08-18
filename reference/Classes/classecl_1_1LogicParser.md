---
title: ecl::LogicParser

---

# ecl::LogicParser






`#include <logic_parser.h>`

## Public Functions

|                | Name           |
| -------------- | -------------- |
| | **[LogicParser](classecl_1_1LogicParser.md#function-logicparser)**()<br>constuctor  |
| | **[~LogicParser](classecl_1_1LogicParser.md#function-~logicparser)**() =default<br>destructor  |
| int | **[Read](classecl_1_1LogicParser.md#function-read)**(const std::string & path)<br>read logic expressions from file  |
| int | **[Parse](classecl_1_1LogicParser.md#function-parse)**(const std::string & expr)<br>parse the expression and generate the standard logic tree  |
| void | **[Clear](classecl_1_1LogicParser.md#function-clear)**()<br>clear the varibles and go back to initial state  |
| int | **[ExtendLeftLex](classecl_1_1LogicParser.md#function-extendleftlex)**(const std::string & expr, std::string & left, std::vector< [TokenPtr](namespaceecl.md#typedef-tokenptr) > & tokens, size_t & divisor) const<br>extend the lexer to lex the expression contains assignment  |
| int | **[ExtendDividerLex](classecl_1_1LogicParser.md#function-extenddividerlex)**(const std::string & expr, std::vector< [TokenPtr](namespaceecl.md#typedef-tokenptr) > & tokens, size_t & divisor) const<br>extend the lexer to lex the expression contians operator '/'  |
| int | **[LeftSideLex](classecl_1_1LogicParser.md#function-leftsidelex)**(const std::string & expr, std::string & left, std::string & right) const<br>extend the lexer to lex the left side identifier and operator '='  |
| int | **[DividerLex](classecl_1_1LogicParser.md#function-dividerlex)**(std::string & right, size_t & divisor) const<br>lex the right side of divider definition expression  |
| int | **[ExtendDividerParse](classecl_1_1LogicParser.md#function-extenddividerparse)**(const std::string & left, const std::vector< [TokenPtr](namespaceecl.md#typedef-tokenptr) > & right, size_t divisor)<br>parse the expressions includes divider  |
| bool | **[CheckIdentifiers](classecl_1_1LogicParser.md#function-checkidentifiers)**(const std::string & left, const std::vector< [TokenPtr](namespaceecl.md#typedef-tokenptr) > & right) const<br>check the form of identifiers  |
| bool | **[CheckIoConflict](classecl_1_1LogicParser.md#function-checkioconflict)**(const std::string & left, const std::vector< [TokenPtr](namespaceecl.md#typedef-tokenptr) > & right) const<br>check whether there is io conflict in  |
| bool | **[IsFrontIo](classecl_1_1LogicParser.md#function-isfrontio)**(const std::string & name) const<br>check the identifier is in FrontIo form  |
| bool | **[IsLemoIo](classecl_1_1LogicParser.md#function-islemoio)**(const std::string & name) const<br>check the identifier is in lemo io form  |
| bool | **[IsBack](classecl_1_1LogicParser.md#function-isback)**(const std::string & name) const<br>check whether the identifier represents the backplane port  |
| bool | **[IsClock](classecl_1_1LogicParser.md#function-isclock)**(const std::string & name) const<br>check whether the identifier represents a clock  |
| bool | **[IsScaler](classecl_1_1LogicParser.md#function-isscaler)**(const std::string & name) const<br>check whether the identifier represents a scaler  |
| bool | **[IsDivider](classecl_1_1LogicParser.md#function-isdivider)**(const std::string & name) const<br>check whether the identifier represents a divider  |
| size_t | **[IdentifierIndex](classecl_1_1LogicParser.md#function-identifierindex)**(const std::string & id) const<br>get the identifier index base on its name  |
| int | **[GenerateGates](classecl_1_1LogicParser.md#function-generategates)**([StandardLogicNode](Classes/classecl_1_1StandardLogicNode.md) * root, const std::vector< [Identifier](Classes/classecl_1_1Identifier.md) * > & id_list)<br>generate or-gates and and-gates from standard logic tree  |
| int | **[GenerateOrGate](classecl_1_1LogicParser.md#function-generateorgate)**(std::bitset< [kMaxIdentifier](namespaceecl.md#variable-kmaxidentifier) > id_flag, const std::vector< [Identifier](Classes/classecl_1_1Identifier.md) * > id_list)<br>generate an or gate  |
| int | **[GenerateClock](classecl_1_1LogicParser.md#function-generateclock)**(const std::string & id)<br>generate a clock according to the identifier name  |
| int | **[GenerateDividerGate](classecl_1_1LogicParser.md#function-generatedividergate)**(const std::vector< [TokenPtr](namespaceecl.md#typedef-tokenptr) > & tokens, size_t other_source)<br>generate or-gate or and-gate with divider output  |
| size_t | **[ParseFrequency](classecl_1_1LogicParser.md#function-parsefrequency)**(const std::string & clock) const<br>parse the clock name and get the frequency  |
| size_t | **[FrontOutputSize](classecl_1_1LogicParser.md#function-frontoutputsize)**() const<br>get the size of the front port output map  |
| [OutputInfo](structecl_1_1OutputInfo.md) | **[FrontOutput](Classes/classecl_1_1LogicParser.md#function-frontoutput)**(size_t index) const<br>get the front output port and source by index  |
| bool | **[IsFrontInput](classecl_1_1LogicParser.md#function-isfrontinput)**(size_t index) const<br>check whether the front port is input port by index  |
| bool | **[IsFrontOutput](classecl_1_1LogicParser.md#function-isfrontoutput)**(size_t index) const<br>check whether the front port is output port by index  |
| bool | **[IsFrontLemo](classecl_1_1LogicParser.md#function-isfrontlemo)**(size_t index) const<br>check whether the front port is lemo by index  |
| bool | **[IsFrontLogicOutput](classecl_1_1LogicParser.md#function-isfrontlogicoutput)**(size_t index) const<br>check whether the front port is logic output only  |
| size_t | **[OrGateSize](classecl_1_1LogicParser.md#function-orgatesize)**() const<br>get the number of the or gates  |
| std::bitset< [kOrBits](namespaceecl.md#variable-korbits) > | **[OrGate](classecl_1_1LogicParser.md#function-orgate)**(size_t index) const<br>get or-gate bits flags by index  |
| size_t | **[AndGateSize](classecl_1_1LogicParser.md#function-andgatesize)**() const<br>get the number of the and gates  |
| std::bitset< [kAndBits](namespaceecl.md#variable-kandbits) > | **[AndGate](classecl_1_1LogicParser.md#function-andgate)**(size_t index) const<br>get and-gate bits flags by index  |
| bool | **[BackEnable](classecl_1_1LogicParser.md#function-backenable)**() const<br>whether to enable back plane output  |
| size_t | **[BackSource](classecl_1_1LogicParser.md#function-backsource)**() const<br>get the back plane output source  |
| size_t | **[ClockSize](classecl_1_1LogicParser.md#function-clocksize)**() const<br>get clock size  |
| size_t | **[ClockFrequency](classecl_1_1LogicParser.md#function-clockfrequency)**(size_t index) const<br>get clock frequency by index  |
| size_t | **[SecondClock](classecl_1_1LogicParser.md#function-secondclock)**() const<br>get the clock which frequency is 1Hz  |
| size_t | **[ScalerSize](classecl_1_1LogicParser.md#function-scalersize)**() const<br>get scaler size  |
| [OutputInfo](structecl_1_1OutputInfo.md) | **[Scaler](Classes/classecl_1_1LogicParser.md#function-scaler)**(size_t index) const<br>get the scaler port and source by index  |
| size_t | **[DividerSize](classecl_1_1LogicParser.md#function-dividersize)**() const<br>get the divider size  |
| [DividerInfo](structecl_1_1DividerInfo.md) | **[Divider](Classes/classecl_1_1LogicParser.md#function-divider)**(size_t index) const<br>get the divider information by index  |
| size_t | **[DividerGateSize](classecl_1_1LogicParser.md#function-dividergatesize)**() const<br>get the divider gate size  |
| [DividerGateInfo](structecl_1_1DividerGateInfo.md) | **[DividerGate](Classes/classecl_1_1LogicParser.md#function-dividergate)**(size_t index) const<br>get the divider gate information by index  |

## Public Functions Documentation

### function LogicParser

```cpp
LogicParser()
```

constuctor 

### function ~LogicParser

```cpp
~LogicParser() =default
```

destructor 

### function Read

```cpp
int Read(
    const std::string & path
)
```

read logic expressions from file 

**Parameters**: 

  * **path** path of input file 


**Return**: 0 on success, -1 on failure 

### function Parse

```cpp
int Parse(
    const std::string & expr
)
```

parse the expression and generate the standard logic tree 

**Parameters**: 

  * **expr** the logic expression to parse 


**Return**: 0 on success, -1 on failure 

### function Clear

```cpp
void Clear()
```

clear the varibles and go back to initial state 

### function ExtendLeftLex

```cpp
int ExtendLeftLex(
    const std::string & expr,
    std::string & left,
    std::vector< TokenPtr > & tokens,
    size_t & divisor
) const
```

extend the lexer to lex the expression contains assignment 

**Parameters**: 

  * **expr** the whole expression includes assignment 
  * **left** the picked left side expression 
  * **tokens** the right side tokens without divider 
  * **divisor** extracted divisor from divider, 0 for no dividers 


**Return**: 0 on success, -1 on failure 

**Note**: This method extends the [Lexer](classecl_1_1Lexer.md) to lex the assignment expression. It recognizes the operator '=' and divides the left and right side expressions.

### function ExtendDividerLex

```cpp
int ExtendDividerLex(
    const std::string & expr,
    std::vector< TokenPtr > & tokens,
    size_t & divisor
) const
```

extend the lexer to lex the expression contians operator '/' 

**Parameters**: 

  * **expr** extend logic expression(inclueds divider) 
  * **tokens** recognize tokens without divider 
  * **divisor** extracted divisor, 0 for no dividers 


**Return**: 0 on success, -1 on failure 

**Note**: The Analyse method in [Lexer](classecl_1_1Lexer.md) can't recognize both the operator '/' and the following number in divider expression. So this function pick them from the expression to adapt to the [Lexer](Classes/classecl_1_1Lexer.md).

### function LeftSideLex

```cpp
int LeftSideLex(
    const std::string & expr,
    std::string & left,
    std::string & right
) const
```

extend the lexer to lex the left side identifier and operator '=' 

**Parameters**: 

  * **expr** expression to lex 
  * **left** left side lex result 
  * **right** right side lex result 


**Return**: 0 on success, -1 on failure 

### function DividerLex

```cpp
int DividerLex(
    std::string & right,
    size_t & divisor
) const
```

lex the right side of divider definition expression 

**Parameters**: 

  * **right** input the whole right side string and output the expression without divider part 
  * **divisor** divisor from the right side string after '/' 


**Return**: 0 on success, -1 on failure 

### function ExtendDividerParse

```cpp
int ExtendDividerParse(
    const std::string & left,
    const std::vector< TokenPtr > & right,
    size_t divisor
)
```

parse the expressions includes divider 

**Parameters**: 

  * **left** left side string 
  * **right** right side tokens without divider 
  * **divisor** divisor value calculated in lex process 


**Return**: generated (identifier, gate, clock, scaler, divider) index, -1 on failure 

### function CheckIdentifiers

```cpp
bool CheckIdentifiers(
    const std::string & left,
    const std::vector< TokenPtr > & right
) const
```

check the form of identifiers 

**Parameters**: 

  * **left** left side identifier in string 
  * **right** right side identifiers in vector 


**Return**: true if identifier in appropirate form, false otherwise 

### function CheckIoConflict

```cpp
bool CheckIoConflict(
    const std::string & left,
    const std::vector< TokenPtr > & right
) const
```

check whether there is io conflict in 

**Parameters**: 

  * **left** left side identifier name 
  * **right** right side identifier list 


**Return**: true if no conflict up to now, false otherwise 

### function IsFrontIo

```cpp
bool IsFrontIo(
    const std::string & name
) const
```

check the identifier is in FrontIo form 

**Parameters**: 

  * **name** the identifier name to check 


**Return**: true if in FrontIO form, false otherwise 

**Note**: FrontIO form means that the identifier matches one of the input/output port on MZTIO. It should be A0-A31, B0-B31 or C0-C31. Apparently, lemo io form is included in FrontIo form. Be aware of the first letter should be uppercase.

### function IsLemoIo

```cpp
bool IsLemoIo(
    const std::string & name
) const
```

check the identifier is in lemo io form 

**Parameters**: 

  * **name** the identifier name to check 


**Return**: true if in lemo io form, false otherwise 

**Note**: Lemo io form means that the identifier matches one of the input/ouput port on daughter card of MZTIO. It should be A16-A31, B16-B31, or C116-C31. It's similar to the FrontIo form.

### function IsBack

```cpp
inline bool IsBack(
    const std::string & name
) const
```

check whether the identifier represents the backplane port 

**Parameters**: 

  * **name** the identifier name to check 


**Return**: true if is backplane port, false otherwise 

### function IsClock

```cpp
bool IsClock(
    const std::string & name
) const
```

check whether the identifier represents a clock 

**Parameters**: 

  * **name** the identifier name to check 


**Return**: true if is clock, false otherwise 

### function IsScaler

```cpp
bool IsScaler(
    const std::string & name
) const
```

check whether the identifier represents a scaler 

**Parameters**: 

  * **name** the identifier name to check 


**Return**: true if is a scaler, false otherwise 

### function IsDivider

```cpp
bool IsDivider(
    const std::string & name
) const
```

check whether the identifier represents a divider 

**Parameters**: 

  * **name** the identifier name to check 


**Return**: true if is a divider, false otherwise 

### function IdentifierIndex

```cpp
size_t IdentifierIndex(
    const std::string & id
) const
```

get the identifier index base on its name 

**Parameters**: 

  * **id** the name of the identifier 


**Return**: index of the identifier 

**Note**: The identifier index affect the bitset of or-gates and and-gates. To be convenient, the index 0-47 is FrontIO identifiers. Port A0-A15 matches index 0-15, port B0-B15 matches index 16-31, port C0-C15 matches index 32-47.

### function GenerateGates

```cpp
int GenerateGates(
    StandardLogicNode * root,
    const std::vector< Identifier * > & id_list
)
```

generate or-gates and and-gates from standard logic tree 

**Parameters**: 

  * **root** root of standard logic tree 
  * **id_list** identifier list from the standard logic tree 


**Return**: front io port or gate index if success, -1 otherwise 

### function GenerateOrGate

```cpp
int GenerateOrGate(
    std::bitset< kMaxIdentifier > id_flag,
    const std::vector< Identifier * > id_list
)
```

generate an or gate 

**Parameters**: 

  * **id_flag** leaves of the node 
  * **id_list** identifier list from the standard logic tree 


**Return**: or gate index, or -1 on failure 

### function GenerateClock

```cpp
int GenerateClock(
    const std::string & id
)
```

generate a clock according to the identifier name 

**Parameters**: 

  * **id** name of identifier 


**Return**: generated clock index, or -1 on failure 

### function GenerateDividerGate

```cpp
int GenerateDividerGate(
    const std::vector< TokenPtr > & tokens,
    size_t other_source
)
```

generate or-gate or and-gate with divider output 

**Parameters**: 

  * **tokens** tokens of the divider and operator 
  * **other_source** index of the the other source to operate with divider 


**Return**: genrated index, or -1 on failure 

### function ParseFrequency

```cpp
size_t ParseFrequency(
    const std::string & clock
) const
```

parse the clock name and get the frequency 

**Parameters**: 

  * **clock** the name of the clock identifier 


**Return**: frequency of the clock parsed 

### function FrontOutputSize

```cpp
inline size_t FrontOutputSize() const
```

get the size of the front port output map 

**Return**: size of the front output map 

### function FrontOutput

```cpp
inline OutputInfo FrontOutput(
    size_t index
) const
```

get the front output port and source by index 

**Parameters**: 

  * **index** index of the output 


**Return**: an [OutputInfo](structecl_1_1OutputInfo.md) struct includes information of output port index and output source, otherwise the values in struct are all -1 

### function IsFrontInput

```cpp
inline bool IsFrontInput(
    size_t index
) const
```

check whether the front port is input port by index 

**Parameters**: 

  * **index** index of port to check 


**Return**: true if is input port, false otherwise 

### function IsFrontOutput

```cpp
inline bool IsFrontOutput(
    size_t index
) const
```

check whether the front port is output port by index 

**Parameters**: 

  * **index** index of port to check 


**Return**: true if is output port, false otherwise 

### function IsFrontLemo

```cpp
inline bool IsFrontLemo(
    size_t index
) const
```

check whether the front port is lemo by index 

**Parameters**: 

  * **index** index of port to check 


**Return**: true if is lemo port, false otherwise 

### function IsFrontLogicOutput

```cpp
inline bool IsFrontLogicOutput(
    size_t index
) const
```

check whether the front port is logic output only 

**Parameters**: 

  * **index** index of port the check 


**Return**: true if is logic output, false otherwise 

### function OrGateSize

```cpp
inline size_t OrGateSize() const
```

get the number of the or gates 

**Return**: size of or gates 

### function OrGate

```cpp
inline std::bitset< kOrBits > OrGate(
    size_t index
) const
```

get or-gate bits flags by index 

**Parameters**: 

  * **index** index of or-gate 


**Return**: or-gate bits flag, 0 otherwise 

### function AndGateSize

```cpp
inline size_t AndGateSize() const
```

get the number of the and gates 

**Return**: size of and gates 

### function AndGate

```cpp
inline std::bitset< kAndBits > AndGate(
    size_t index
) const
```

get and-gate bits flags by index 

**Parameters**: 

  * **index** index of and-gate 


**Return**: and-gate bits flag, 0 otherwise 

### function BackEnable

```cpp
inline bool BackEnable() const
```

whether to enable back plane output 

**Return**: true to enable, false otherwise 

### function BackSource

```cpp
inline size_t BackSource() const
```

get the back plane output source 

**Return**: source index of back output 

### function ClockSize

```cpp
inline size_t ClockSize() const
```

get clock size 

**Return**: clock size 

### function ClockFrequency

```cpp
inline size_t ClockFrequency(
    size_t index
) const
```

get clock frequency by index 

**Parameters**: 

  * **index** index of the clock 


**Return**: clock frequency 

### function SecondClock

```cpp
inline size_t SecondClock() const
```

get the clock which frequency is 1Hz 

**Return**: the index clock which frequency is 1Hz, -1 on failure 

### function ScalerSize

```cpp
inline size_t ScalerSize() const
```

get scaler size 

**Return**: scalers size 

### function Scaler

```cpp
inline OutputInfo Scaler(
    size_t index
) const
```

get the scaler port and source by index 

**Parameters**: 

  * **index** index of the output 


**Return**: an [OutputInfo](structecl_1_1OutputInfo.md) struct includes information of output port index and output source, otherwise the values in struct are all -1 

### function DividerSize

```cpp
inline size_t DividerSize() const
```

get the divider size 

**Return**: divider size 

### function Divider

```cpp
inline DividerInfo Divider(
    size_t index
) const
```

get the divider information by index 

**Parameters**: 

  * **index** index of divider to get 


**Return**: a struct [DividerInfo](structecl_1_1DividerInfo.md) includes divider port, source and divisor , or all -1 in struct on failure 

### function DividerGateSize

```cpp
inline size_t DividerGateSize() const
```

get the divider gate size 

**Return**: size of divider gates 

### function DividerGate

```cpp
inline DividerGateInfo DividerGate(
    size_t index
) const
```

get the divider gate information by index 

**Parameters**: 

  * **index** index of divider gate to get 


**Return**: a struct [DividerGateInfo](structecl_1_1DividerGateInfo.md) includes divider source, the other source and operator type of divider gate 

-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800