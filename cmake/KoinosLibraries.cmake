include(ExternalProject)

ExternalProject_Add(
   KoinosWasmLibraries
   SOURCE_DIR "${CMAKE_SOURCE_DIR}/libraries"
   BINARY_DIR "${CMAKE_BINARY_DIR}/libraries"
   CMAKE_ARGS -DCMAKE_TOOLCHAIN_FILE=${CMAKE_BINARY_DIR}/lib/cmake/koinos-cdt/KoinosWasmToolchain.cmake -DBoost_INCLUDE_DIR=${CMAKE_BINARY_DIR}/include -DBUILD_TYPES_TESTS=OFF -DINSTALL_KOINOS_TYPES_HEADERS=ON -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
   UPDATE_COMMAND ""
   PATCH_COMMAND  ""
   TEST_COMMAND   ""
   BUILD_ALWAYS 1
   DEPENDS koinos_wasi_sdk boost_headers
)
