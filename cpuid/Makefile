all: cpuid

clean:
	rm -fr *.o
	rm -fr cpuid

.PHONY: clean all

cpuid: cpuid.o
	ld $+ -e start -o $@

%.o: %.s
	as $+ -g -o $@
