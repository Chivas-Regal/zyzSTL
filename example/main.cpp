#include "memlistnode.h"
#include "memlist.h"
#include "memlist_ff.h"
#include "memlist_wf.h"
#include "memlist_bf.h"
#include "mempool.h"
#include "allocator.h"
#include "vector.h"
#include "trie.h"
#include "stack.h"
#include "algorithm.h"
#include <vector>
#include <thread>

MemPool *mem_pool = new MemPool(2000, 4800, FIRST_FIT);

#include <iostream>
#include <map>

void threadWork (int id) {
	zyz::Vector<int, zyz::Allocator<int> > v;
	for (int i = 0; i < 1000; i ++) {
		v.emplace_back(i);
		if (id == 50 && i == 50) {
			mem_pool->print(0);
		}
	}
	v.clear();
}

int main () {
	struct node { int x, y; };

	zyz::Trie<node> trie;
	trie["hello"] = {10086, 10085};
	std::cout << trie["hello"].x << " " << trie["hello"].y << std::endl;
}