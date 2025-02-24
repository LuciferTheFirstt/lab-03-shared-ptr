#include "SharedPtr.hpp"
#include <iostream>
#include <atomic>

using namespace std;

int main() {
	SharedPtr<int> ptr(new int(10));
	SharedPtr<int> ptr1(ptr);

	cout << "ptr count(2)" << ptr.use_count() << endl;
	cout << "ptr count(2)" << ptr1.use_count() << endl;

	SharedPtr<int> ptr2(ptr1);

	cout << "ptr count(3)" << ptr.use_count() << endl;
	cout << "ptr count(3)" << ptr1.use_count() << endl;

	ptr.reset();
	ptr2.reset();

	cout << "ptr count(0)" << ptr.use_count() << endl;
	cout << "ptr count(1)" << ptr1.use_count() << endl;
	cout << "ptr count(0)" << ptr2.use_count() << endl;

	SharedPtr<int> ptr3(new int(15));

	ptr3.swap(ptr1);
	cout << endl;
	cout << ptr.use_count() << endl;
	cout << ptr1.use_count() << endl;
	return 0;
}
