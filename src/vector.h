#pragma once

#include "../include/mempool.h"
#include "../include/allocator.h"

namespace zyz {
	template<class T, typename Alloc = std::allocator<T>>
	class vector {
	public:
		using value_type = T;
		using pointer = T *;
		using const_pointer = const T *;
		using reference = T &;
		using const_reference = const T &;
		using size_type = size_t;
		using difference_type = ptrdiff_t;
		using Self = vector<T>;
		using iterator = pointer;
		using const_iterator = const_pointer;

		iterator begin() const;

		iterator end() const;

	public:
		vector();

		vector(int n, const T &data);

		explicit vector(const Self &v);

		template<class Iterator>
		vector(Iterator first, Iterator last);

		~vector();

	public:
		reference operator[](int i);

	public:
		[[nodiscard]] size_type size() const noexcept;

		[[nodiscard]] size_type capacity() const;

		[[nodiscard]] bool empty() const noexcept;

		void reserve(size_type n);

		void resize(size_type newSize, const T &data);

		iterator insert(iterator pos, const T &data);

		void push_back(const T &data);

		void push_back(T &&data);

		template<class ...Args>
		void emplace_back(Args &&... args);

		void pop_back();

		T front() noexcept;

		T back() noexcept;

		void clear();

	private:
		pointer _start;        ///< 开始
		pointer _finish;        ///< 结束（多一位）
		pointer _endOfStorage;    ///< 可存结尾
	};
}