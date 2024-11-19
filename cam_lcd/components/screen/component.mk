#
# "main" pseudo-component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)


SCREEN_DIR = controller_driver/st7789


COMPONENT_ADD_INCLUDEDIRS := . iface_driver $(SCREEN_DIR) screen_utility
COMPONENT_SRCDIRS := . iface_driver $(SCREEN_DIR) screen_utility
