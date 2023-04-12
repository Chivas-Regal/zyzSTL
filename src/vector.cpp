#include "vector.h"

template<class T, typename Alloc>
typename zyz::vector<T, Alloc>::iterator zyz::vector<T, Alloc>::begin() const {
	return _start;
}

template<class T, typename Alloc>
typename zyz::vector<T, Alloc>::iterator zyz::vector<T, Alloc>::end() const {
	return _finish;
}

template<class T, typename Alloc>
zyz::vector<T, Alloc>::vector() :
        _start(nullptr),
		_finish(nullptr),
		_endOfStorage(nullptr)
{}

template<class T, typename Alloc>
zyz::vector<T, Alloc>::vector(int n, const T &data):
	_start(Alloc::allocate(n)),
	_finish(_start + n),
	_endOfStorage(_start + n)
{
	for (int i = 0; i < n; i ++) {
		_start[i] = data;
	}
}

template<class T, typename Alloc>
zyz::vector<T, Alloc>::vector(const vector::Self &v)
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
zyz::vector<T, Alloc>::vector(Iterator first, Iterator last) {
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
zyz::vector<T, Alloc>::~vector() {
	clear();
}

template<class T, typename Alloc>
typename zyz::vector<T, Alloc>::reference zyz::vector<T, Alloc>::operator[](int i) {
	return *(_start + i);
}

template<class T, typename Alloc>
typename zyz::vector<T, Alloc>::size_type zyz::vector<T, Alloc>::size() const noexcept {
	return _finish - _start;
}

template<class T, typename Alloc>
typename zyz::vector<T, Alloc>::size_type zyz::vector<T, Alloc>::capacity() const {
	return _endOfStorage - _start;
}

template<class T, typename Alloc>
bool zyz::vector<T, Alloc>::empty() const noexcept {
	return _start == _finish;
}

template<class T, typename Alloc>
void zyz::vector<T, Alloc>::reserve(vector::size_type n) {
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
void zyz::vector<T, Alloc>::resize(vector::size_type newSize, const T &data) {
	reserve(newSize);
	size_type addSize = newSize - size();
	for (int i = 0; i < addSize; i ++) {
		*_finish = data;
		_finish ++;
	}
}

template<class T, typename Alloc>
typename zyz::vector<T, Alloc>::iterator zyz::vector<T, Alloc>::insert(vector::iterator pos, const T &data) {
	if (_start == nullptr) {
		push_back(data);
		return;
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
void zyz::vector<T, Alloc>::push_back(const T &data) {
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
void zyz::vector<T, Alloc>::push_back(T&& data) {
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
void zyz::vector<T, Alloc>::emplace_back(Args&&... args) {
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
void zyz::vector<T, Alloc>::pop_back() {
	_finish --;
}

template<class T, typename Alloc>
T zyz::vector<T, Alloc>::front() noexcept {
	return *_start;
}

template<class T, typename Alloc>
T zyz::vector<T, Alloc>::back() noexcept {
	return *(_finish - 1);
}

template<class T, typename Alloc>
void zyz::vector<T, Alloc>::clear() {
	if (_start == nullptr)
		return;
	Alloc::deallocate(_start, capacity());
	_start = _finish = _endOfStorage = nullptr;
}
