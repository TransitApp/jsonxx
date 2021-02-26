CXXFLAGS=-std=c++11 -Werror -Wall -g -DDEBUG

jsonxx.o: jsonxx.h jsonxx.cc

jsonxx_test: CXXFLAGS+=-Wno-error=deprecated-declarations
jsonxx_test: jsonxx_test.cc jsonxx.o

.PHONY:
test: jsonxx.o jsonxx_test
	./jsonxx_test

.PHONY: clean
clean:
	rm -f jsonxx_test *.o *~
