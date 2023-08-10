"""
configurations for julia to make it more my taste
"""
module MyJulia

import Base: +, *

export +, *

+(a::String, b::String) = *(a::String, b::String)
*(a::String, b::Int) = repeat(a::String, b::Int)

end # module MyJulia
