
set(src_dirs    camera
                lcd
               )

set(include_dirs    camera
                    lcd
                   )

set(requires    esp32-camera
                bus
                screen
                )

idf_component_register(SRC_DIRS ${src_dirs} INCLUDE_DIRS ${include_dirs} REQUIRES ${requires} EMBED_FILES ${embed_files})

component_compile_options(-ffast-math -O3)
