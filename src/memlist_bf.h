#pragma once

#include "../include/memlistnode.h"
#include "../include/memlist.h"

class MemList_BF : public MemList {
public:
    MemList_BF () = delete;
    MemList_BF (void* pos, ssize_t size) : MemList(pos, size) {}
    ~MemList_BF() override = default;

    void* allocate (ssize_t size) override;
};
