# SYNTAX TEST "source.cairo" "sample testcase"

func foo{output_ptr: felt*}(a: felt*):
#   ^ meta.function.cairo 
#    ^^^ entity.name.function.cairo
end

func foo{output_ptr: felt*}(a: felt*):
#   ^ meta.function.cairo 
# <--- storage.type.function.cairo   
end

func foo{output_ptr: felt*}(a: felt*):
#       ^^^^^^^^^^^^^^^^^^^ meta.parameter.implicit.cairo
end

func foo{output_ptr: felt*}(a: felt*):
#                          ^^^^^^^^^^ meta.parameter.cairo
end
# <--- storage.type.function.end.cairo