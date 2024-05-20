"""
configurations for julia to make it more my taste
"""
module MyJulia

import Base: +, *
import Pkg

export +, *
export activate_local_environment

+(a::Union{Char, String}, b::Union{Char, String}) = *(a::Union{Char, String}, b::Union{Char, String})
*(a::Union{Char, String}, b::Int) = repeat(a::Union{Char, String}, b::Int)

function activate_local_environment(current_dir)
    while true
        if isfile(joinpath(current_dir, "Project.toml"))
            Pkg.activate(current_dir)
            return
        end

        parent_dir = normpath(dirname(current_dir))
        if parent_dir == current_dir
            break
        end

        current_dir = parent_dir
    end
    println("No Project.toml found in any parent directory.")
end

end # module MyJulia
