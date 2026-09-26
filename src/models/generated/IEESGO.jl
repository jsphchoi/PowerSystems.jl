#=
This file is auto-generated. Do not edit.
=#

#! format: off

"""
    mutable struct IEESGO <: TurbineGov
        T1::Float64
        T2::Float64
        T3::Float64
        T4::Float64
        T5::Float64
        T6::Float64
        K1::Float64
        K2::Float64
        K3::Float64
        P_lim::MinMax
        P_ref::Float64
        ext::Dict{String, Any}
        states::Vector{Symbol}
        n_states::Int
        states_types::Vector{StateTypes}
        internal::InfrastructureSystemsInternal
    end

IEEE Standard Model for Turbine-Governor. This model corresponds to IEESGO in PSSE

# Arguments
- `T1::Float64`: Controller lag in s, validation range: `(0, nothing)`
- `T2::Float64`: Controller lead compensation in s, validation range: `(0, nothing)`
- `T3::Float64`: Governor lag in s, validation range: `(0, nothing)`
- `T4::Float64`: Steam inlet delay in s, validation range: `(0, nothing)`
- `T5::Float64`: Reheater delay in s, validation range: `(0, nothing)`
- `T6::Float64`: Crossover delay in s, validation range: `(0, nothing)`
- `K1::Float64`: Regulation gain (1/R), validation range: `(0, nothing)`
- `K2::Float64`: Fraction of power after the reheater, validation range: `(0, 1)`
- `K3::Float64`: Fraction of power after the crossover, validation range: `(0, 1)`
- `P_lim::MinMax`: Power limits (P_min, P_max)
- `P_ref::Float64`: (default: `1.0`) Reference Power Set-point (pu), validation range: `(0, nothing)`
- `ext::Dict{String, Any}`: (default: `Dict{String, Any}()`) An [*ext*ra dictionary](@ref additional_fields) for users to add metadata that are not used in simulation.
- `states::Vector{Symbol}`: (**Do not modify.**) The [states](@ref S) of the IEESGO model are:
	x_g1: Controller lag state,
	x_g2: Lead-lag state,
	x_g3: Steam inlet state,
	x_g4: Reheater state,
	x_g5: Crossover state
- `n_states::Int`: (**Do not modify.**) IEESGO has 5 states
- `states_types::Vector{StateTypes}`: (**Do not modify.**) IEESGO has 5 [states](@ref S)
- `internal::InfrastructureSystemsInternal`: (**Do not modify.**) PowerSystems.jl internal reference
"""
mutable struct IEESGO <: TurbineGov
    "Controller lag in s"
    T1::Float64
    "Controller lead compensation in s"
    T2::Float64
    "Governor lag in s"
    T3::Float64
    "Steam inlet delay in s"
    T4::Float64
    "Reheater delay in s"
    T5::Float64
    "Crossover delay in s"
    T6::Float64
    "Regulation gain (1/R)"
    K1::Float64
    "Fraction of power after the reheater"
    K2::Float64
    "Fraction of power after the crossover"
    K3::Float64
    "Power limits (P_min, P_max)"
    P_lim::MinMax
    "Reference Power Set-point (pu)"
    P_ref::Float64
    "An [*ext*ra dictionary](@ref additional_fields) for users to add metadata that are not used in simulation."
    ext::Dict{String, Any}
    "(**Do not modify.**) The [states](@ref S) of the IEESGO model are:
	x_g1: Controller lag state,
	x_g2: Lead-lag state,
	x_g3: Steam inlet state,
	x_g4: Reheater state,
	x_g5: Crossover state"
    states::Vector{Symbol}
    "(**Do not modify.**) IEESGO has 5 states"
    n_states::Int
    "(**Do not modify.**) IEESGO has 5 [states](@ref S)"
    states_types::Vector{StateTypes}
    "(**Do not modify.**) PowerSystems.jl internal reference"
    internal::InfrastructureSystemsInternal
end

function IEESGO(T1, T2, T3, T4, T5, T6, K1, K2, K3, P_lim, P_ref=1.0, ext=Dict{String, Any}(), )
    IEESGO(T1, T2, T3, T4, T5, T6, K1, K2, K3, P_lim, P_ref, ext, [:x_g1, :x_g2, :x_g3, :x_g4, :x_g5], 5, [StateTypes.Hybrid, StateTypes.Hybrid, StateTypes.Hybrid, StateTypes.Hybrid, StateTypes.Hybrid], InfrastructureSystemsInternal(), )
end

function IEESGO(; T1, T2, T3, T4, T5, T6, K1, K2, K3, P_lim, P_ref=1.0, ext=Dict{String, Any}(), states=[:x_g1, :x_g2, :x_g3, :x_g4, :x_g5], n_states=5, states_types=[StateTypes.Hybrid, StateTypes.Hybrid, StateTypes.Hybrid, StateTypes.Hybrid, StateTypes.Hybrid], internal=InfrastructureSystemsInternal(), )
    IEESGO(T1, T2, T3, T4, T5, T6, K1, K2, K3, P_lim, P_ref, ext, states, n_states, states_types, internal, )
end

# Constructor for demo purposes; non-functional.
function IEESGO(::Nothing)
    IEESGO(;
        T1=0,
        T2=0,
        T3=0,
        T4=0,
        T5=0,
        T6=0,
        K1=0,
        K2=0,
        K3=0,
        P_lim=(min=0.0, max=0.0),
        P_ref=0,
        ext=Dict{String, Any}(),
    )
end

"""Get [`IEESGO`](@ref) `T1`."""
get_T1(value::IEESGO) = value.T1
"""Get [`IEESGO`](@ref) `T2`."""
get_T2(value::IEESGO) = value.T2
"""Get [`IEESGO`](@ref) `T3`."""
get_T3(value::IEESGO) = value.T3
"""Get [`IEESGO`](@ref) `T4`."""
get_T4(value::IEESGO) = value.T4
"""Get [`IEESGO`](@ref) `T5`."""
get_T5(value::IEESGO) = value.T5
"""Get [`IEESGO`](@ref) `T6`."""
get_T6(value::IEESGO) = value.T6
"""Get [`IEESGO`](@ref) `K1`."""
get_K1(value::IEESGO) = value.K1
"""Get [`IEESGO`](@ref) `K2`."""
get_K2(value::IEESGO) = value.K2
"""Get [`IEESGO`](@ref) `K3`."""
get_K3(value::IEESGO) = value.K3
"""Get [`IEESGO`](@ref) `P_lim`."""
get_P_lim(value::IEESGO) = value.P_lim
"""Get [`IEESGO`](@ref) `P_ref`."""
get_P_ref(value::IEESGO) = value.P_ref
"""Get [`IEESGO`](@ref) `ext`."""
get_ext(value::IEESGO) = value.ext
"""Get [`IEESGO`](@ref) `states`."""
get_states(value::IEESGO) = value.states
"""Get [`IEESGO`](@ref) `n_states`."""
get_n_states(value::IEESGO) = value.n_states
"""Get [`IEESGO`](@ref) `states_types`."""
get_states_types(value::IEESGO) = value.states_types
"""Get [`IEESGO`](@ref) `internal`."""
get_internal(value::IEESGO) = value.internal

"""Set [`IEESGO`](@ref) `T1`."""
set_T1!(value::IEESGO, val) = value.T1 = val
"""Set [`IEESGO`](@ref) `T2`."""
set_T2!(value::IEESGO, val) = value.T2 = val
"""Set [`IEESGO`](@ref) `T3`."""
set_T3!(value::IEESGO, val) = value.T3 = val
"""Set [`IEESGO`](@ref) `T4`."""
set_T4!(value::IEESGO, val) = value.T4 = val
"""Set [`IEESGO`](@ref) `T5`."""
set_T5!(value::IEESGO, val) = value.T5 = val
"""Set [`IEESGO`](@ref) `T6`."""
set_T6!(value::IEESGO, val) = value.T6 = val
"""Set [`IEESGO`](@ref) `K1`."""
set_K1!(value::IEESGO, val) = value.K1 = val
"""Set [`IEESGO`](@ref) `K2`."""
set_K2!(value::IEESGO, val) = value.K2 = val
"""Set [`IEESGO`](@ref) `K3`."""
set_K3!(value::IEESGO, val) = value.K3 = val
"""Set [`IEESGO`](@ref) `P_lim`."""
set_P_lim!(value::IEESGO, val) = value.P_lim = val
"""Set [`IEESGO`](@ref) `P_ref`."""
set_P_ref!(value::IEESGO, val) = value.P_ref = val
"""Set [`IEESGO`](@ref) `ext`."""
set_ext!(value::IEESGO, val) = value.ext = val
"""Set [`IEESGO`](@ref) `states_types`."""
set_states_types!(value::IEESGO, val) = value.states_types = val
