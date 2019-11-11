#include <iostream>
#include <atomic>


class Count {
public:
	Count() {
		cnt = 0;
	}

	void increase() {
		cnt++;
	}
	void decrease() {
		cnt--;
	}
	int refcount() {
		return cnt;
	}

private:
	std::atomic_uint cnt;
};



template <typename T>
class SharedPtr {
public:
	SharedPtr() :ptr(nullptr),count(nullptr) {};//По умолчанию
	SharedPtr(T* pobject)//Принимает на вход указатель
	{
		ptr =pobject;
		count = new Count();
		count->increase();
	}
	SharedPtr(const SharedPtr<T>& r)// Копрование 
	{
		ptr = r.ptr;
		count = r.count;
		count->increase();
	}
	SharedPtr(SharedPtr<T>&& r)//Конструктор перемещения 
	{
		ptr = r.ptr;
		count = r.count;
		r.ptr = nullptr;
		r.count = nullptr;
	}

	auto operator = (const SharedPtr<T>& r)->SharedPtr<T>&
	{
		ptr = r.ptr;
		count = r.count;
		count->increase();
	}

	auto operator = (SharedPtr<T>&& r)->SharedPtr<T>&
	{
		ptr = r.ptr;
		count = r.count;
		r.ptr = nullptr;
		r.count = nullptr;
		return *this;
	}

	// проверяет, указывает ли указатель на объект
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

	auto get()->T*
	{
		return ptr;
	}

	void reset()
	{
		*this = SharedPtr();
	}
	void reset(T* ptr)
	{
		*this = SharedPtr(ptr);
	}
	void swap(SharedPtr& r)
	{
		if (&r == this)
		{
			return;
		}

		std::swap(ptr, r.ptr);
		std::swap(count, r.count);
	}
	// возвращает количество объектов SharedPtr, которые ссылаются на тот же управляемый объект
	auto use_count() const->size_t
	{
		if (ptr != nullptr)
		{
			return count->refcount();
		}
		else
		{
			return 0;
		}
	}

~SharedPtr()
	{
		if (count != nullptr)
		{
			if (count->refcount() > 1)
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

private:
	T* ptr;
	Count* count;
};


