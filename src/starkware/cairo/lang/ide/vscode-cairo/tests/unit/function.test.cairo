# SYNTAX TEST "source.cairo" "sample testcase"

from starkware.cairo.common.registers import get_fp_and_pc
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import.cairo
# <---- keyword.control.from.cairo
#                                     ^^^^^^ meta.import.cairo keyword.control.import.cairo

struct MyStruct:
# <----- storage.type.struct.cairo
#      ^^^^^^^^ entity.name.struct.cairo
    member a : felt
#   ^^^^^^ keyword.other.cairo
#            ^ keyword.operator.type.annotation.cairo
#              ^^^^ support.type.primitive.cairo
    member b: MySecondStruct*
#          ^ variable.other.cairo
#             ^^^^^^^^^^^^^^ support.type.cairo
end
# <--- storage.type.struct.cairo

func foo{output_ptr: felt*}(a: felt*):
#   ^ meta.function.cairo 
#    ^^^ entity.name.function.cairo
#                                   ^^ meta.function.signature.cairo
    assert col_diff * col_diff = 1  
#   ^^^^^^ keyword.other.cairo
#                   ^ keyword.operator.arithmetic.cairo
#                              ^ keyword.operator.assignment.cairo
end

func foo{output_ptr: felt*}(a: felt*):
#   ^ meta.function.cairo 
# <--- storage.type.function.cairo   
#                    ^^^^ support.type.primitive.cairo
end

func foo{output_ptr: felt*, range_check}(a: felt*) -> (a: felt):
#       ^^^^^^^^^^^^^^^^^^^ meta.parameter.implicit.cairo
#                         ^ punctuation.separator.comma.cairo
#                           ^^^^^^^^^^^ variable.parameter.cairo
    return ()
#   ^^^^^^ keyword.control.flow.cairo
end
# <--- storage.type.function.end.cairo

func foo():
    foo(a=10, b=10)
#   ^^^ meta.function-call.cairo
#   ^^^ entity.name.function.cairo
#        ^ keyword.operator.assignment.cairo
#         ^^ constant.numeric.decimal.cairo
    let a : felt        = 10
#   ^^^ storage.type.cairo   
#       ^ variable.other.cairo
#       ^^^^^^^ meta.type.annotation.cairo
#                       ^ keyword.operator.assignment.cairo
#                         ^^ constant.numeric.decimal.cairo

    let (local x: MyStruct) = lasdj
#   ^^^ storage.type.cairo
#        ^^^^^ storage.type.cairo
#                 ^^^^^^^^ support.type.cairo

    if 1 == 0:        
#   ^^ keyword.control.conditional.cairo
#        ^^ keyword.operator.comparison.cairo
#      ^  constant.numeric.decimal.cairo
#           ^  constant.numeric.decimal.cairo
    else:
#   ^^^^ keyword.control.conditional.cairo
    end
#   ^^^ keyword.control.end.cairo
    ret
#   ^^^ keyword.control.flow.cairo
end
# <--- storage.type.function.end.cairo

func foo(a: MyStruct) -> (a: felt):
#           ^^^^^^^^ support.type.cairo
#                     ^^ keyword.operator.arrow.cairo
    with_attr attribute_name("Attribute value"):
#   ^^^^^^^^^ keyword.other.attribute.cairo
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scope-attribute.cairo
#             ^^^^^^^^^^^^^^ entity.other.attribute-name.cairo
#                            ^^^^^^^^^^^^^^^^^ string.quoted.double.cairo
    end    

    let 
#   ^^^ storage.type.cairo 
        x = 10
#      ^^^^^^^ meta.var.expr.cairo

    local loc_tuple : (
        Location, Location, Location, Location, Location
    ) = (
        Location(row=0, col=2),
        Location(row=1, col=2),
        Location(row=1, col=3),
        Location(row=2, col=3),
        Location(row=3, col=3),
        )

    local tiles : (felt, felt, felt, felt) = (3, 7, 8, 12)

                

end
# <--- storage.type.function.end.cairo




