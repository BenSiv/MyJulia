"""
configurations for julia to make it more my taste
"""
module MyJulia

import Base: +, *

export +, *

+(a::Union{Char, String}, b::Union{Char, String}) = *(a::Union{Char, String}, b::Union{Char, String})
*(a::Union{Char, String}, b::Int) = repeat(a::Union{Char, String}, b::Int)

end # module MyJulia
