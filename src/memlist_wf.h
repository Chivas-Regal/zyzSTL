#pragma once

#include "../include/memlistnode.h"
#include "../include/memlist.h"

#include <cstdint>

class MemList_WF : public MemList {
public:
    MemList_WF () = delete;
    MemList_WF (void* pos, ssize_t size) : MemList(pos, size) {}
    ~MemList_WF() override = default;

    void* allocate (ssize_t size) override;
};

