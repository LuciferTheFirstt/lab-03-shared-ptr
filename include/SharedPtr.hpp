#include <iostream>
#include <atomic>


class Count {
public:
	Count() : cnt(0) {}
	
	Count( const Count& ) = delete;
	Count& operator=( const Count& ) = delete;

	void increase() {
		cnt++;
	}
	void decrease() {
		cnt--;
	}
	int refcount() {
		return cnt;
	}
	
	void operator++()
	{
		cnt++;
	}

	void operator++( int )
	{
		cnt++;
	}

	void operator--()
	{
		cnt--;
	}
	void operator--( int )
	{
		cnt--;
	}

private:
	std::atomic_uint cnt;
};



template <typename T>
class SharedPtr {
public:
	SharedPtr( T* pobject = nullptr );
	SharedPtr( const SharedPtr<T>& r );
	SharedPtr( SharedPtr<T>&& r );

	auto operator = ( const SharedPtr<T>& r )->SharedPtr<T>&
	{
		ptr = r.ptr;
		count = r.count;
		count->increase();
		return *this;
	}

	auto operator = ( SharedPtr<T>&& r )->SharedPtr<T>&
	{
		if( *this != r )
		{
			ptr = r.ptr;
			count = r.count;
			r.ptr = nullptr;
			r.count = nullptr;
		}
		return *this;
	}

	
	operator bool() const
	{
		return ptr != nullptr;
	}

	auto operator*() const->T&
	{
		return *ptr;
	}

	auto operator->() const->T*
	{
		return ptr;
	}

	auto get()->T*;

	void decrease();

	
	void reset( T* ptr_ = nullptr )
	{
		SharedPtr<T> new_ptr(ptr_);
		this->swap( new_ptr );
	}

	void swap( SharedPtr& r );
	
	auto use_count() const->size_t;

	~SharedPtr();

private:
	T* ptr;
	Count* count;
};


template<typename T>
inline SharedPtr<T>::SharedPtr( T* pobject )
{
	ptr = pobject;
	count = new Count();
	if( pobject ) {
		count->increase();
	}
}

template<typename T>
inline SharedPtr<T>::SharedPtr( const SharedPtr<T>& r) 
{
	ptr = r.ptr;
	count = r.count;
	count->increase();
}

template<typename T>
inline SharedPtr<T>::SharedPtr( SharedPtr<T>&& r )
{
	ptr = r.ptr;
	count = r.count;
	r.ptr = nullptr;
	r.count = nullptr;
}

template<typename T>
inline auto SharedPtr<T>::get() -> T*
{
	return ptr;
}

template<typename T>
inline void SharedPtr<T>::decrease()
{
	count->decrease();
	if( count->refcount() == 0 )
	{
		delete ptr;
		delete count;
	}
}


template<typename T>
inline void SharedPtr<T>::swap( SharedPtr& r )
{
	std::swap( ptr, r.ptr );
	std::swap( count, r.count );
}


template<typename T>
inline auto SharedPtr<T>::use_count() const -> size_t
{
	return count->refcount();
}

template<typename T>
inline SharedPtr<T>::~SharedPtr()
{
	if( count != nullptr )
	{
		if( count->refcount() > 1 )
		{
			count->decrease();
		}
		else
		{
			delete ptr;
			delete count;
		}
	}
}
