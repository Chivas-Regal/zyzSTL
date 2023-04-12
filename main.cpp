#include "include/memlist_ff.h"
#include "include/memlist_wf.h"
#include "include/memlist_bf.h"
#include "include/mempool.h"
MemPool *mem_pool = new MemPool(2000, 4800, FIRST_FIT);

#include <iostream>
#include <map>

/*
 * 测试用
 * 代码运行已编译好的文件即可：
 * ./cmake-build-debug/mem_manage
 */


#include "include/allocator.h"
#include <vector>
#include <thread>
#include "include/vector.h"

void threadWork (int id) {
	zyz::vector<int, zyz::Allocator<int> > v;
	for (int i = 0; i < 1000; i ++) {
		v.emplace_back(i);
		if (id == 50 && i == 50) {
			mem_pool->print(1);
		}
	}
	v.clear();
}

int main () {
	zyz::vector<std::thread, zyz::Allocator<std::thread> > v;
	for (int i = 0; i < 100; i++) {
		v.emplace_back(threadWork, i);
	}
	for (int i = 0; i < 100; i ++) {
		v[i].join();
	}
	v.clear();

	mem_pool->print(1);

	delete mem_pool;
}