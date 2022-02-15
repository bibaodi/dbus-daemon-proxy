all: dbus-daemon-proxy

dbus-daemon-proxy: dbus-daemon-proxy.c
	$(CC) $< `pkg-config --cflags --libs dbus-glib-1 dbus-1 ` -o $@
	

clean:
	rm -f dbus-daemon-proxy
