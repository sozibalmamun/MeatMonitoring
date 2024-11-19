
set(SCREEN_DIR   "controller_driver/st7789"

            )

idf_component_register(SRC_DIRS "${SCREEN_DIR}" "screen_utility" "interface_driver" "."
                        INCLUDE_DIRS "${SCREEN_DIR}" "interface_driver" "."
                        PRIV_INCLUDE_DIRS "screen_utility"
                        REQUIRES bus
                        )
