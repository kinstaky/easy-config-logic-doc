---
title: config/logic_parser.h

---

# config/logic_parser.h



## Namespaces

| Name           |
| -------------- |
| **[ecl](namespaceecl.md)**  |

## Classes

|                | Name           |
| -------------- | -------------- |
| struct | **[ecl::OutputInfo](structecl_1_1OutputInfo.md)**  |
| struct | **[ecl::DividerInfo](structecl_1_1DividerInfo.md)**  |
| struct | **[ecl::DividerGateInfo](structecl_1_1DividerGateInfo.md)**  |
| class | **[ecl::LogicParser](classecl_1_1LogicParser.md)**  |




## Source code

```cpp
#ifndef __LOGIC_PARSER_H__
#define __LOGIC_PARSER_H__


#include <bitset>
#include <map>
#include <string>
#include <vector>

#include "syntax/parser/token.h"
#include "syntax/parser/lexer.h"
#include "syntax/parser/syntax_parser.h"
#include "syntax/logical_grammar.h"
#include "standardize/standard_logic_tree.h"

namespace ecl {

const size_t kFrontIoNum = 48;

const size_t kOrGatesOffset = kFrontIoNum;
const size_t kOrBits = kFrontIoNum;
const size_t kMaxOrGates = 16;

const size_t kAndGatesOffset = kOrGatesOffset + kMaxOrGates;
const size_t kAndBits = kOrBits + kMaxOrGates;
const size_t kMaxAndGates = 16;

const size_t kClocksOffset = kAndGatesOffset + kMaxAndGates;
const size_t kMaxClocks = 4;

const size_t kScalersOffset = kClocksOffset + kMaxClocks;
const size_t kMaxScalers = 32;

const size_t kBackOffset = kScalersOffset + kMaxScalers;
const size_t kMaxBack = 1;

const size_t kDividersOffset = kBackOffset + kMaxBack;
const size_t kMaxDividers = 4;
const size_t kDividerGatesOffset = kDividersOffset + kMaxDividers;
const size_t kMaxDividerGates = 8;

const size_t kPrimaryClockOffset = kDividerGatesOffset + kMaxDividerGates;


struct OutputInfo {
    size_t port;            // port local index
    size_t source;          // source global index
};
struct DividerInfo {
    size_t port;            // divider local index
    size_t source;          // source global index
    size_t divisor;         // divisor
};
struct DividerGateInfo {
    size_t divider;         // index of divider
    size_t source;          // index of the other source
    int op_type;            // operator type
};


class LogicParser {
public:

    LogicParser();


    ~LogicParser() = default;


    int Read(const std::string &path) noexcept;


    int Parse(const std::string &expr) noexcept;


    void Clear() noexcept;


    //-------------------------------------------------------------------------
    //                      helper functions for method Parse
    //-------------------------------------------------------------------------


    int ExtendLeftLex(const std::string &expr, std::string &left, std::vector<TokenPtr> &tokens, size_t &divisor) const noexcept;


    int ExtendDividerLex(const std::string &expr, std::vector<TokenPtr> &tokens, size_t &divisor) const noexcept;



    int LeftSideLex(const std::string &expr, std::string &left, std::string &right) const noexcept;


    int DividerLex(std::string &right, size_t &divisor) const noexcept;


    int ExtendDividerParse(const std::string &left, const std::vector<TokenPtr> &right, size_t divisor) noexcept;


    bool CheckIdentifiers(const std::string &left, const std::vector<TokenPtr> &right) const noexcept;


    bool CheckIoConflict(const std::string &left, const std::vector<TokenPtr> &right) const noexcept;



    bool IsFrontIo(const std::string &name) const noexcept;


    bool IsLemoIo(const std::string &name) const noexcept;


    inline bool IsBack(const std::string &name) const noexcept {
        return name == "Back";
    }

    bool IsClock(const std::string &name) const noexcept;


    bool IsScaler(const std::string &name) const noexcept;



    bool IsDivider(const std::string &name) const noexcept;


    size_t IdentifierIndex(const std::string &id) const noexcept;


    int GenerateGates(StandardLogicNode *root, const std::vector<Identifier*> &id_list) noexcept;


    int GenerateOrGate(std::bitset<kMaxIdentifier> id_flag, const std::vector<Identifier*> id_list) noexcept;


    int GenerateClock(const std::string &id) noexcept;


    int GenerateDividerGate(const std::vector<TokenPtr> &tokens, size_t other_source) noexcept;


    size_t ParseFrequency(const std::string &clock) const noexcept;



    //-------------------------------------------------------------------------
    //                      methods to get result
    //-------------------------------------------------------------------------


    inline size_t FrontOutputSize() const noexcept {
        return front_outputs_.size();
    }


    inline OutputInfo FrontOutput(size_t index) const noexcept {
        if (index >= front_outputs_.size()) {
            return OutputInfo{size_t(-1), size_t(-1)};
        }
        return front_outputs_[index];
    }


    inline bool IsFrontInput(size_t index) const noexcept {
        if (index >= kFrontIoNum) {
            return false;
        }
        return front_in_use_.test(index);
    }


    inline bool IsFrontOutput(size_t index) const noexcept {
        if (index >= kFrontIoNum) {
            return false;
        }
        return front_out_use_.test(index);
    }


    inline bool IsFrontLemo(size_t index) const noexcept {
        if (index >= kFrontIoNum) {
            return false;
        }
        return front_use_lemo_.test(index);
    }


    inline bool IsFrontLogicOutput(size_t index) const noexcept {
        if (index >= kFrontIoNum) {
            return false;
        }
        return front_logic_output_.test(index);
    }


    inline size_t OrGateSize() const noexcept {
        return or_gates_.size();
    }


    inline std::bitset<kOrBits> OrGate(size_t index) const noexcept {
        if (index >= or_gates_.size()) {
            return 0;
        }
        return or_gates_[index];
    }



    inline size_t AndGateSize() const noexcept {
        return and_gates_.size();
    }



    inline std::bitset<kAndBits> AndGate(size_t index) const noexcept {
        if (index >= and_gates_.size()) {
            return 0;
        }
        return and_gates_[index];
    }


    inline bool BackEnable() const noexcept {
        return back_output_ != size_t(-1);
    }


    inline size_t BackSource() const noexcept {
        return back_output_;
    }


    inline size_t ClockSize() const noexcept {
        return clocks_.size();
    }


    inline size_t ClockFrequency(size_t index) const noexcept {
        return clocks_[index];
    }

    inline size_t SecondClock() const noexcept {
        for (size_t i = 0; i < clocks_.size(); ++i) {
            if (clocks_[i] == 1) {
                return kClocksOffset + i;
            }
        }
        return size_t(-1);
    }


    inline size_t ScalerSize() const noexcept {
        return scalers_.size();
    }


    inline OutputInfo Scaler(size_t index) const noexcept {
        if (index >= scalers_.size()) {
            return OutputInfo{size_t(-1), size_t(-1)};
        }
        return scalers_[index];
    }


    inline size_t DividerSize() const noexcept {
        return dividers_.size();
    }


    inline DividerInfo Divider(size_t index) const noexcept {
        if (index >= dividers_.size()) {
            return DividerInfo{size_t(-1), size_t(-1), size_t(-1)};
        }
        return dividers_[index];
    }


    inline size_t DividerGateSize() const noexcept {
        return divider_gates_.size();
    }


    inline DividerGateInfo DividerGate(size_t index) const noexcept {
        if (index >= divider_gates_.size()) {
            return DividerGateInfo{size_t(-1), size_t(-1), -1};
        }
        return divider_gates_[index];
    }




private:
    std::vector<OutputInfo> front_outputs_;
    std::bitset<kFrontIoNum> front_out_use_;
    std::bitset<kFrontIoNum> front_in_use_;
    std::bitset<kFrontIoNum> front_use_lemo_;
    std::bitset<kFrontIoNum> front_logic_output_;

    size_t back_output_;

    std::vector<std::bitset<kOrBits>> or_gates_;

    std::vector<std::bitset<kAndBits>> and_gates_;

    std::vector<size_t> clocks_;

    std::vector<OutputInfo> scalers_;
    std::bitset<kMaxScalers> scaler_use_;

    std::vector<DividerInfo> dividers_;
    std::bitset<kMaxDividers> divider_use_;
    std::vector<DividerGateInfo> divider_gates_;
};

}               // namespace ecl

#endif          // __LOGIC_PARSER_H__
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800
