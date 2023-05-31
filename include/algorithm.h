#ifndef MEM_MANAGE_ALGORITHM_H
#define MEM_MANAGE_ALGORITHM_H

namespace zyz {

	template<class T> struct less {
		bool operator () (const T& x, const T& y) const {
			return x < y;
		}
		typedef T first_argument_type;
		typedef T second_argument_type;
		typedef bool return_type;
	};

	template<class T> struct greater {
		bool operator () (const T& x, const T& y) const {
			return x > y;
		}
		typedef T first_argument_type;
		typedef T second_argument_type;
		typedef bool return_type;
	};

	template<class T>
	_LIBCPP_NODISCARD_EXT inline _LIBCPP_INLINE_VISIBILITY
	const T& max (const T& a, const T& b) {
		return a > b ? a : b;
	}

	template<class T, typename compare>
	_LIBCPP_NODISCARD_EXT inline _LIBCPP_INLINE_VISIBILITY
	const T& max (const T& a, const T& b, compare comp = less<T>()) {
		return comp(a, b) ? b : a;
	}

	template<class T>
	_LIBCPP_NODISCARD_EXT inline _LIBCPP_INLINE_VISIBILITY
	const T& min (const T& a, const T& b) {
		return a < b ? a : b;
	}

	template<class T, typename compare>
	_LIBCPP_NODISCARD_EXT inline _LIBCPP_INLINE_VISIBILITY
	const T& min (const T& a, const T& b, compare comp) {
		return comp(a, b) ? a : b;
	}

	template<class T>
	inline _LIBCPP_INLINE_VISIBILITY
	void swap(T& x, T& y) {
		T _t(std::_LIBCPP_ABI_NAMESPACE::move(x));
		x = std::_LIBCPP_ABI_NAMESPACE::move(y);
		y = std::_LIBCPP_ABI_NAMESPACE::move(_t);
	}

	template<class ForwardIterator>
	ForwardIterator __quicksort_paritition (ForwardIterator begin, ForwardIterator end) {
		decltype(*begin) pivot = *begin;
		ForwardIterator l = begin, r = end;
		while (l < r) {
			while (l < r && *r >= pivot)
				--r;
			while (l < r && *l <= pivot)
				++l;
			if (l < r) {
				swap(*l, *r);
			}
		}
		swap(*begin, *l);
		return l;
	}

	template<class ForwardIterator, typename Func>
	ForwardIterator __quicksort_paritition (ForwardIterator begin, ForwardIterator end, Func comp) {
		decltype(*begin) pivot = *begin;
		ForwardIterator l = begin, r = end;
		while (l < r) {
			while (l < r && !comp(*r, pivot))
				--r;
			while (l < r && !comp(pivot, *l))
				++l;
			if (l < r) {
				swap(*l, *r);
			}
		}
		swap(*begin, *l);
		return l;
	}

	template<class ForwardIterator>
	void __quicksort (ForwardIterator begin, ForwardIterator end) {
		if (begin >= end || begin >= end - 1)
			return;
		ForwardIterator pivot = __quicksort_paritition(begin, end - 1);
		__quicksort(begin, pivot);
		__quicksort(pivot + 1, end);
	}

	template<class ForwardIterator, typename Func>
	void __quicksort (ForwardIterator begin, ForwardIterator end, Func comp) {
		if (begin >= end || begin >= end - 1)
			return;
		ForwardIterator pivot = __quicksort_paritition(begin, end - 1, comp);
		__quicksort(begin, pivot, comp);
		__quicksort(pivot + 1, end, comp);
	}

	template<class ForwardIterator>
	void sort (ForwardIterator begin, ForwardIterator end) {
		__quicksort(begin, end);
	}

	template<class ForwardIterator, typename Func>
	void sort (ForwardIterator begin, ForwardIterator end, Func comp) {
		__quicksort(begin, end, comp);
	}
}

#endif //MEM_MANAGE_ALGORITHM_H
