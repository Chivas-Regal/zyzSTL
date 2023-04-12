#pragma once

#include "../include/mempool.h"

#include <iostream>
#include <climits>

extern MemPool *mem_pool;

namespace zyz {

	template<class T>
	inline T *_allocate(ptrdiff_t size, T *) {
		return reinterpret_cast<T *>(mem_pool->allocate(std::max(size, (ptrdiff_t)sizeof(MemListNode))));
	}

	template<class T>
	inline void _deallocate(T *buffer, size_t n) {
		mem_pool->deallocate((uint8_t *) buffer, std::max(n * sizeof(T), (size_t)sizeof(MemListNode)));
	}

	template<class T>
	class Allocator {
	public:
		using value_type = T;
		using pointer = T *;
		using const_pointer = const T *;
		using reference = T &;
		using const_reference = const T &;
		using size_type = size_t;
		using difference_type = ptrdiff_t;

		template<class U>
		struct rebind {
			using other = Allocator<U>;
		};

		static pointer allocate(size_type n, const void *hint = nullptr) {
			return _allocate((difference_type) (n * sizeof(T)), pointer(0));
		}

		static void deallocate(pointer p, size_type n) {
			_deallocate(p, n);
		}

		template<class ...Args>
		static void construct(pointer p, Args&& ...args) {
			new(p) T(std::forward<Args>(args)...);
		}

		static void destory(pointer p) {
			p->~U();
		}

		static pointer address(reference x) {
			return (pointer) &x;
		}

		static const_pointer const_address(const_reference x) {
			return (const_pointer) &x;
		}

		[[nodiscard]] size_type max_size() const {
			return size_type(UINT_MAX / sizeof(T));
		}
	};

}