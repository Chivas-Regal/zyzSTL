#pragma once

#include <string>
#include "vector.h"

namespace zyz {

    template<class T, typename Alloc = Allocator<T>>
    class Stack {
	public:
		Stack() = default;
		~Stack() { self.clear(); }

		void push (const T& data) { self.push_back(data); }
		void push (T&& data) { self.push_back(data); }

		void pop () { self.pop_back(); }

		T& top() { return self.back(); }

		int size () { return self.size(); }
	private:
		Vector<T, Alloc> self;
	};

};