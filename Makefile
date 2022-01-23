liba = lib3dxdisp.a

$(liba): src/3dxdisp.o
	$(AR) rcs $@ $>

.PHONY: clean
clean:
	rm -f src/*.o $(liba)
