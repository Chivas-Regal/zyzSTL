#ifndef _Vector_H_
#define _Vector_H_

#include "mempool.h"
#include "allocator.h"
#include <cstring>

namespace zyz {
	template<class T, typename Alloc = Allocator<T>>
	class Vector {
	public:
		using value_type      =     T;
		using pointer         =     T *;
		using const_pointer   =     const T *;
		using reference       =     T &;
		using const_reference =     const T &;
		using size_type       =     size_t;
		using difference_type =     ptrdiff_t;
		using Self            =     Vector<T>;
		using iterator        =     pointer;
		using const_iterator  =     const_pointer;

		iterator begin() const;

		iterator end() const;

	public:
		Vector();

		Vector(int n, const T &data);

		explicit Vector(const Self &v);

		template<class Iterator>
		Vector(Iterator first, Iterator last);

		~Vector();

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

		T& front() noexcept;

		T& back() noexcept;

		void clear();

	private:
		pointer _start;        ///< 开始
		pointer _finish;        ///< 结束（多一位）
		pointer _endOfStorage;    ///< 可存结尾
	};
}

template<class T, typename Alloc>
typename zyz::Vector<T, Alloc>::iterator zyz::Vector<T, Alloc>::begin() const {
	return _start;
}

template<class T, typename Alloc>
typename zyz::Vector<T, Alloc>::iterator zyz::Vector<T, Alloc>::end() const {
	return _finish;
}

template<class T, typename Alloc>
zyz::Vector<T, Alloc>::Vector() :
        _start(nullptr),
		_finish(nullptr),
		_endOfStorage(nullptr)
{}

template<class T, typename Alloc>
zyz::Vector<T, Alloc>::Vector(int n, const T &data):
	_start(Alloc::allocate(n)),
	_finish(_start + n),
	_endOfStorage(_start + n)
{
	for (int i = 0; i < n; i ++) {
		_start[i] = data;
	}
}

template<class T, typename Alloc>
zyz::Vector<T, Alloc>::Vector(const Vector::Self &v)
{
	_start = _finish = Alloc::allocate(v.size());
	_endOfStorage = _start + v.size();
	iterator it = v.begin();
	while (_finish != _endOfStorage) {
		*_finish = *it;
		it ++;
		_finish ++;
	}
}

template<class T, typename Alloc>
template<class Iterator>
zyz::Vector<T, Alloc>::Vector(Iterator first, Iterator last) {
	int count = 0;
	auto it = first;
	while (it != last) {
		count ++;
		it ++;
	}
	_start = _finish = Alloc::allocate(count);
	_endOfStorage = _start + count;
	while (_finish != _endOfStorage) {
		*_finish = *first;
		first ++;
		_finish ++;
	}
}

template<class T, typename Alloc>
zyz::Vector<T, Alloc>::~Vector() {
	clear();
}

template<class T, typename Alloc>
typename zyz::Vector<T, Alloc>::reference zyz::Vector<T, Alloc>::operator[](int i) {
	return *(_start + i);
}

template<class T, typename Alloc>
typename zyz::Vector<T, Alloc>::size_type zyz::Vector<T, Alloc>::size() const noexcept {
	return _finish - _start;
}

template<class T, typename Alloc>
typename zyz::Vector<T, Alloc>::size_type zyz::Vector<T, Alloc>::capacity() const {
	return _endOfStorage - _start;
}

template<class T, typename Alloc>
bool zyz::Vector<T, Alloc>::empty() const noexcept {
	return _start == _finish;
}

template<class T, typename Alloc>
void zyz::Vector<T, Alloc>::reserve(Vector::size_type n) {
	if (_start && n <= capacity())
		return;
	size_type oldSize = size();
	pointer newPlace = Alloc::allocate(n);
	memcpy(newPlace, _start, sizeof(T) * oldSize);
	if (_start) {
		Alloc::deallocate(_start, oldSize);
	}
	_start = newPlace;
	_finish = _start + oldSize;
	_endOfStorage = _start + n;
}

template<class T, typename Alloc>
void zyz::Vector<T, Alloc>::resize(Vector::size_type newSize, const T &data) {
	reserve(newSize);
	size_type addSize = newSize - size();
	for (int i = 0; i < addSize; i ++) {
		*_finish = data;
		_finish ++;
	}
}

template<class T, typename Alloc>
typename zyz::Vector<T, Alloc>::iterator zyz::Vector<T, Alloc>::insert(Vector::iterator pos, const T &data) {
	if (_start == nullptr) {
		push_back(data);
		return nullptr;
	}
	if (_finish == _endOfStorage) {
		reserve(capacity() * 2);
	}
	iterator it = _finish;
	while (true) {
		*it = *(it - 1);
		it --;
		if (it == pos) break;
	}
	*it = data;
	_finish ++;
	return pos;
}

template<class T, typename Alloc>
void zyz::Vector<T, Alloc>::push_back(const T &data) {
	if (_start == nullptr) {
		_start = Alloc::allocate(1);
		_finish = _start;
		_endOfStorage = _start + 1;
	} else if (_finish == _endOfStorage) {
		reserve(size() * 2);
	}
	*_finish = data;
	_finish ++;
}
template<class T, typename Alloc>
void zyz::Vector<T, Alloc>::push_back(T&& data) {
	if (_start == nullptr) {
		_start = Alloc::allocate(1);
		_finish = _start;
		_endOfStorage = _start + 1;
	} else if (_finish == _endOfStorage) {
		reserve(size() * 2);
	}
	*_finish = std::forward<T>(data);
	_finish ++;
}

template<class T, typename Alloc>
template<class ...Args>
void zyz::Vector<T, Alloc>::emplace_back(Args&&... args) {
	if (_start == nullptr) {
		_start = Alloc::allocate(1);
		_finish = _start;
		_endOfStorage = _start + 1;
	} else if (_finish == _endOfStorage) {
		reserve(size() * 2);
	}
	Alloc::construct(_finish ++, std::forward<Args>(args)...);
}

template<class T, typename Alloc>
void zyz::Vector<T, Alloc>::pop_back() {
	_finish --;
}

template<class T, typename Alloc>
T& zyz::Vector<T, Alloc>::front() noexcept {
	return *_start;
}

template<class T, typename Alloc>
T& zyz::Vector<T, Alloc>::back() noexcept {
	return *(_finish - 1);
}

template<class T, typename Alloc>
void zyz::Vector<T, Alloc>::clear() {
	if (_start == nullptr)
		return;
	Alloc::deallocate(_start, capacity());
	_start = _finish = _endOfStorage = nullptr;
}

#endif