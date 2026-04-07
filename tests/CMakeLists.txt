function(add_sysy_test test_name test_file)
    set(TEST_OUTPUT_DIR "${CMAKE_BINARY_DIR}/tests/${test_name}")
    file(MAKE_DIRECTORY "${TEST_OUTPUT_DIR}")
    
    set(KOOPA_FILE "${TEST_OUTPUT_DIR}/${test_name}.koopa")
    set(RISCV_FILE "${TEST_OUTPUT_DIR}/${test_name}.s")
    
    add_test(NAME ${test_name}_compile_koopa
        COMMAND ${CMAKE_COMMAND} -E env
            "CDE_INCLUDE_PATH=$ENV{CDE_INCLUDE_PATH}"
            "CDE_LIBRARY_PATH=$ENV{CDE_LIBRARY_PATH}"
            ${CMAKE_BINARY_DIR}/compiler -koopa ${CMAKE_CURRENT_SOURCE_DIR}/${test_file} -o ${KOOPA_FILE}
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    )
    
    add_test(NAME ${test_name}_compile_riscv
        COMMAND ${CMAKE_COMMAND} -E env
            "CDE_INCLUDE_PATH=$ENV{CDE_INCLUDE_PATH}"
            "CDE_LIBRARY_PATH=$ENV{CDE_LIBRARY_PATH}"
            ${CMAKE_BINARY_DIR}/compiler -riscv ${CMAKE_CURRENT_SOURCE_DIR}/${test_file} -o ${RISCV_FILE}
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    )
endfunction()

add_sysy_test(simple test.simple.sysy)
add_sysy_test(fib test.fib.sysy)
add_sysy_test(000_main test.000_main.sysy)
add_sysy_test(001_var_defn test.001_var_defn.sysy)
add_sysy_test(002_var_defn2 test.002_var_defn2.sysy)
add_sysy_test(003_var_defn3 test.003_var_defn3.sysy)
add_sysy_test(014_add test.014_add.sysy)
add_sysy_test(015_add2 test.015_add2.sysy)
add_sysy_test(016_addc test.016_addc.sysy)
add_sysy_test(017_sub test.017_sub.sysy)
add_sysy_test(018_sub2 test.018_sub2.sysy)
add_sysy_test(019_subc test.019_subc.sysy)
add_sysy_test(020_mul test.020_mul.sysy)
