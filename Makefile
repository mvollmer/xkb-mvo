install:
	patch /usr/share/X11/xkb/rules/evdev.xml evdev.xml.patch
	patch /usr/share/X11/xkb/rules/evdev evdev.patch
	cp mvo /usr/share/X11/xkb/symbols/

diff:
	diff -w -u /usr/share/X11/xkb/rules/evdev.xml evdev.xml >evdev.xml.patch; true
	diff -w -u /usr/share/X11/xkb/rules/evdev evdev >evdev.patch; true
