EXAMPLES := hello

examples: $(EXAMPLES)
clean:
	rm -f $(EXAMPLES) *.o


%.o: %.asm
	nasm -f macho64 $+ -o $@
%: %.o
	ld $+ -o $@
