obj = src/example.o
bin = example

CFLAGS += -I../src
LDFLAGS += ../lib3dxdisp.a -lusbhid

$(bin): $(obj) ../lib3dxdisp.a
	$(CC) $(CFLAGS) -o $@ $(obj) $(LDFLAGS)

src/example.o: src/logo.h

.PHONY: clean
clean:
	rm -f $(obj) $(bin)
