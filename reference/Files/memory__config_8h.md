---
title: config/memory_config.h

---

# config/memory_config.h



## Namespaces

| Name           |
| -------------- |
| **[ecl](namespaceecl.md)**  |

## Classes

|                | Name           |
| -------------- | -------------- |
| class | **[ecl::MemoryConfig](classecl_1_1MemoryConfig.md)**  |
| struct | **[ecl::MemoryConfig::Memory](structecl_1_1MemoryConfig_1_1Memory.md)**  |




## Source code

```cpp
#ifndef __MEMORY_CONFIG_H__
#define __MEMORY_CONFIG_H__

#include <cstdint>

#include "config/logic_parser.h"

namespace ecl {

class MemoryConfig {
public:

    static const size_t kFrontIoGroupNum = 3;
    static const size_t kFrontIoGroupSize = 16;
    static const size_t kFrontIoNum = kFrontIoGroupNum * kFrontIoGroupSize;
    static const size_t kFrontIoSelectionBits = 8;

    static const size_t kMultiNum = 16;
    static const size_t kMultiThresholdBits = 8;
    static const size_t kMultiBits = kFrontIoNum + kMultiThresholdBits;

    static const size_t kOrGateNum = 16;
    static const size_t kOrGateBits = kFrontIoNum + kMultiNum;

    static const size_t kAndGateNum = 16;
    static const size_t kAndGateBits = kFrontIoNum + kMultiNum + kOrGateNum;

    static const size_t kBackEnableBits = 1;
    static const size_t kBackSelectionBits = 8;

    static const size_t kDividerNum = 8;
    static const size_t kDividerSelectionBits = 8;
    static const size_t kDivider_DivisorBits = 32;

    static const size_t kDividerGateNum = 8;
    static const size_t kOperatorTypeBits = 1;
    static const size_t kDividerGate_DivderSourceSelectionBits = 4;
    static const size_t kDividerGate_OtherSourceSelectionBits = 8;
    static const size_t kDividerGateBits = 16;

    static const size_t kScalerNum = 32;
    static const size_t kScalerSourceSelectionBits = 8;
    static const size_t kScalerClockSelectionBits = 4;


    struct Memory {

        // front io config
        uint16_t rj45_enable[kFrontIoGroupNum];
        uint16_t pl_out_enable[kFrontIoGroupNum];
        uint16_t front_input_inverse[kFrontIoGroupNum];
        uint16_t front_output_inverse[kFrontIoGroupNum];
        uint8_t front_io_source[kFrontIoNum];

        // multi config
        uint16_t multi_front_selection[kMultiNum][kFrontIoGroupNum];
        uint8_t multi_threshold[kMultiNum];

        // or gate config
        uint16_t or_front_selection[kOrGateNum][kFrontIoGroupNum];
        uint16_t or_multi_selection[kOrGateNum];

        // and gate config
        uint16_t and_front_selection[kAndGateNum][kFrontIoGroupNum];
        uint16_t and_multi_selection[kAndGateNum];
        uint16_t and_or_selection[kAndGateNum];

        // back io config
        uint8_t back_enable;
        uint8_t back_source;

        // divider config
        uint8_t divider_source[kDividerNum];
        uint32_t divider_divisor[kDividerNum];

        // divider gate config
        uint8_t divider_gate_operator_type[kDividerGateNum];
        uint8_t divider_gate_divider_source[kDividerGateNum];
        uint8_t divider_gate_other_source[kDividerGateNum];

        // scaler config
        uint8_t scaler_source[kScalerNum];
        uint8_t scaler_clock_source[kScalerNum];
    };


    MemoryConfig() noexcept;

    ~MemoryConfig() = default;


    void Clear() noexcept;


    int Read(LogicParser *parser) noexcept;


    int Read(const char *file) noexcept;


    int TesterRead(LogicParser *parser) noexcept;


    int Write(const char *file) const noexcept;


    friend std::ostream& operator<<(std::ostream &os, const MemoryConfig &config) noexcept;


    int MapMemory(volatile uint32_t *map) const noexcept;



    inline const Memory* GetMemory() const noexcept {
        return &memory_;
    }


    uint8_t ConvertSource(size_t source) const noexcept;

private:
    Memory memory_;

};


}                   // namespace ecl

#endif              // __MEMORY_CONFIG_H__
```


-------------------------------

Updated on 2022-08-18 at 21:30:47 +0800
