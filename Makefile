src = $(wildcard src/*.c) $(wildcard src/hidapi/*.c)
obj = $(src:.c=.o)
dep = $(obj:.o=.d)

liba = lib3dxdisp.a

CFLAGS = -pedantic -Wall -g `pkgconf --cflags hidapi`
LDFLAGS = -ludev `pkgconf --libs hidapi`

$(liba): $(obj)
	$(AR) rcs $@ $(obj)

.PHONY: clean
clean:
	rm -f $(obj) $(liba)
