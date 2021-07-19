cmake_minimum_required(VERSION 3.15.3)
set(CMAKE_VERBOSE_MAKEFILE OFF)

# Path to toolchain file
set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/arm-none-eabi-gcc.cmake)

# Project name, executable name and linker script
project(samd-anadelay)
set(EXECUTABLE_NAME firmware)
set(EXECUTABLE ${EXECUTABLE_NAME}.elf)
set(LINKER_FILE ${CMAKE_SOURCE_DIR}/third_party/samd21d/gcc/gcc/samd21e17d_flash.ld)

# C99 standard
enable_language(C ASM)
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

# Confirm toolchain and linker files
message(STATUS "CMAKE_TOOLCHAIN_FILE: ${CMAKE_TOOLCHAIN_FILE}")
message(STATUS "LINKER_FILE: ${LINKER_FILE}")

# List of source files
set(SRC_FILES
        src/main.c

        src/drv/clocks.c
        src/drv/gpio.c
        src/drv/systick.c
        src/drv/usart.c

        third_party/samd21d/gcc/system_samd21.c
        third_party/samd21d/gcc/gcc/startup_samd21.c
)

# Build executable from listed source files
add_executable(${EXECUTABLE} ${SRC_FILES})

# Compiler defines
target_compile_definitions(${EXECUTABLE} PRIVATE
        -D__SAMD21E17D__
        -DDEBUG
)

# Include directories
target_include_directories(${EXECUTABLE} PRIVATE
        src
        src/drv
        third_party/samd21d/include
        third_party/cmsis/include
)

# Compiler options
target_compile_options(${EXECUTABLE} PRIVATE
        -mcpu=cortex-m0plus
        -mthumb
        -mlong-calls

        -fdata-sections
        -ffunction-sections

        -Wall
        -Og
        -g3
)

# Linker options
target_link_options(${EXECUTABLE} PRIVATE
        -T${LINKER_FILE}
        -mcpu=cortex-m0plus
        -mthumb

        -specs=nano.specs

        -lc
        -lm
        -lnosys

        -Wl,-Map=${EXECUTABLE_NAME}.map,--cref
        -Wl,--gc-sections
        -Xlinker -print-memory-usage -Xlinker
)

# Print executable size
add_custom_command(TARGET ${EXECUTABLE}
        POST_BUILD
        COMMAND ${CMAKE_SIZE_UTIL} ${EXECUTABLE})

# Create hex and binary files
add_custom_command(TARGET ${EXECUTABLE}
        POST_BUILD
        COMMAND ${CMAKE_OBJCOPY} -O ihex ${EXECUTABLE} ${EXECUTABLE_NAME}.hex
        COMMAND ${CMAKE_OBJCOPY} -O binary ${EXECUTABLE} ${EXECUTABLE_NAME}.bin)