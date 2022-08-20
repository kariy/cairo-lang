# SYNTAX TEST "source.cairo" "sample testcase"

func foo{output_ptr: felt*}(a: felt*):
# <---- storage.type.function.cairo
#   ^ meta.function.cairo
#    ^^^ entity.name.function.cairo
#        ^^^ variable.parameter.implicit.cairo
#                           ^^^^^^^^ meta.parameter.cairo 
#                                    ^ meta.function.definition.end.cairo
    if 0 == 0:
        let x = 10
    else:
    end

    tempvar x = 10
#   ^^^^^^^ storage.type.cairo
#               ^^ constant.numeric.decimal.cairo
end
# <--- keyword.control.other.cairo