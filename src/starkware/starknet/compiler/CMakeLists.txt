if (NOT DEFINED CAIRO_PYTHON_INTERPRETER)
    set(CAIRO_PYTHON_INTERPRETER python3.7)
endif()

python_lib(starknet_compile_lib
    PREFIX starkware/starknet/compiler

    FILES
    data_encoder.py
    compile.py
    contract_interface.py
    event.py
    external_wrapper.py
    starknet_pass_manager.py
    starknet_preprocessor.py
    storage_var.py
    validation_utils.py

    LIBS
    cairo_compile_lib
    cairo_constants_lib
    starknet_abi_lib
    starknet_common_lib
    starknet_contract_class_lib
    starknet_definitions_lib
    starknet_hints_whitelist_lib
    starknet_security_lib
    starkware_python_utils_lib
    starkware_utils_lib
    pip_typing_extensions
)

python_lib(starknet_compile_test_utils_lib
    PREFIX starkware/starknet/compiler

    FILES
    test_utils.py

    LIBS
    cairo_compile_lib
    cairo_compile_test_utils_lib
    cairo_constants_lib
    starknet_compile_lib
)

full_python_test(starknet_compile_test
    PYTHON ${CAIRO_PYTHON_INTERPRETER}
    TESTED_MODULES starkware/starknet/compiler
    PREFIX starkware/starknet/compiler

    FILES
    data_encoder_test.py
    contract_interface_test.py
    event_test.py
    external_wrapper_test.py
    starknet_preprocessor_test.py
    storage_var_test.py

    LIBS
    cairo_compile_test_utils_lib
    starknet_compile_test_utils_lib
    starknet_compile_lib
    pip_pytest
)

python_venv(starknet_compile_venv
    PYTHON ${CAIRO_PYTHON_INTERPRETER}

    LIBS
    starknet_compile_lib
)

python_exe(starknet_compile_exe
    VENV starknet_compile_venv
    MODULE starkware.starknet.compiler.compile
)
