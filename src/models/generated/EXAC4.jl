#=
This file is auto-generated. Do not edit.
=#

#! format: off

"""
    mutable struct EXAC4 <: AVR
        Tr::Float64
        Vi_lim::MinMax
        Tc::Float64
        Tb::Float64
        Ka::Float64
        Ta::Float64
        Vr_lim::MinMax
        Kc::Float64
        V_ref::Float64
        ext::Dict{String, Any}
        states::Vector{Symbol}
        n_states::Int
        internal::InfrastructureSystemsInternal
    end

IEEE Type AC4 Excitation System. This model corresponds to EXAC4 in PSSE

# Arguments
- `Tr::Float64`: Voltage Measurement Time Constant in s, validation range: `(0, nothing)`
- `Vi_lim::MinMax`: Voltage input limits (Vi_min, Vi_max)
- `Tc::Float64`: Numerator lead-lag (lead) time constant in s, validation range: `(0, nothing)`
- `Tb::Float64`: Denominator lead-lag (lag) time constant in s, validation range: `(0, nothing)`
- `Ka::Float64`: Amplifier Gain, validation range: `(0, nothing)`
- `Ta::Float64`: Amplifier Time Constant in s, validation range: `(0, nothing)`
- `Vr_lim::MinMax`: Voltage regulator limits (regulator output) (Vr_min, Vr_max)
- `Kc::Float64`: Current field constant limiter multiplier, validation range: `(0, nothing)`
- `V_ref::Float64`: (default: `1.0`) Reference Voltage Set-point (pu), validation range: `(0, nothing)`
- `ext::Dict{String, Any}`: (default: `Dict{String, Any}()`) An [*ext*ra dictionary](@ref additional_fields) for users to add metadata that are not used in simulation.
- `states::Vector{Symbol}`: (**Do not modify.**) The [states](@ref S) are:
	Vm: Sensed Terminal Voltage,
	Vrll: Lead-Lag state,
	Vr: Regulator Output
- `n_states::Int`: (**Do not modify.**) The EXAC4 has 3 states
- `internal::InfrastructureSystemsInternal`: (**Do not modify.**) PowerSystems.jl internal reference
"""
mutable struct EXAC4 <: AVR
    "Voltage Measurement Time Constant in s"
    Tr::Float64
    "Voltage input limits (Vi_min, Vi_max)"
    Vi_lim::MinMax
    "Numerator lead-lag (lead) time constant in s"
    Tc::Float64
    "Denominator lead-lag (lag) time constant in s"
    Tb::Float64
    "Amplifier Gain"
    Ka::Float64
    "Amplifier Time Constant in s"
    Ta::Float64
    "Voltage regulator limits (regulator output) (Vr_min, Vr_max)"
    Vr_lim::MinMax
    "Current field constant limiter multiplier"
    Kc::Float64
    "Reference Voltage Set-point (pu)"
    V_ref::Float64
    "An [*ext*ra dictionary](@ref additional_fields) for users to add metadata that are not used in simulation."
    ext::Dict{String, Any}
    "(**Do not modify.**) The [states](@ref S) are:
	Vm: Sensed Terminal Voltage,
	Vrll: Lead-Lag state,
	Vr: Regulator Output"
    states::Vector{Symbol}
    "(**Do not modify.**) The EXAC4 has 3 states"
    n_states::Int
    "(**Do not modify.**) PowerSystems.jl internal reference"
    internal::InfrastructureSystemsInternal
end

function EXAC4(Tr, Vi_lim, Tc, Tb, Ka, Ta, Vr_lim, Kc, V_ref=1.0, ext=Dict{String, Any}(), )
    EXAC4(Tr, Vi_lim, Tc, Tb, Ka, Ta, Vr_lim, Kc, V_ref, ext, [:Vm, :Vrll, :Vr], 3, InfrastructureSystemsInternal(), )
end

function EXAC4(; Tr, Vi_lim, Tc, Tb, Ka, Ta, Vr_lim, Kc, V_ref=1.0, ext=Dict{String, Any}(), states=[:Vm, :Vrll, :Vr], n_states=3, internal=InfrastructureSystemsInternal(), )
    EXAC4(Tr, Vi_lim, Tc, Tb, Ka, Ta, Vr_lim, Kc, V_ref, ext, states, n_states, internal, )
end

# Constructor for demo purposes; non-functional.
function EXAC4(::Nothing)
    EXAC4(;
        Tr=0,
        Vi_lim=(min=0.0, max=0.0),
        Tc=0,
        Tb=0,
        Ka=0,
        Ta=0,
        Vr_lim=(min=0.0, max=0.0),
        Kc=0,
        V_ref=0,
        ext=Dict{String, Any}(),
    )
end

"""Get [`EXAC4`](@ref) `Tr`."""
get_Tr(value::EXAC4) = value.Tr
"""Get [`EXAC4`](@ref) `Vi_lim`."""
get_Vi_lim(value::EXAC4) = value.Vi_lim
"""Get [`EXAC4`](@ref) `Tc`."""
get_Tc(value::EXAC4) = value.Tc
"""Get [`EXAC4`](@ref) `Tb`."""
get_Tb(value::EXAC4) = value.Tb
"""Get [`EXAC4`](@ref) `Ka`."""
get_Ka(value::EXAC4) = value.Ka
"""Get [`EXAC4`](@ref) `Ta`."""
get_Ta(value::EXAC4) = value.Ta
"""Get [`EXAC4`](@ref) `Vr_lim`."""
get_Vr_lim(value::EXAC4) = value.Vr_lim
"""Get [`EXAC4`](@ref) `Kc`."""
get_Kc(value::EXAC4) = value.Kc
"""Get [`EXAC4`](@ref) `V_ref`."""
get_V_ref(value::EXAC4) = value.V_ref
"""Get [`EXAC4`](@ref) `ext`."""
get_ext(value::EXAC4) = value.ext
"""Get [`EXAC4`](@ref) `states`."""
get_states(value::EXAC4) = value.states
"""Get [`EXAC4`](@ref) `n_states`."""
get_n_states(value::EXAC4) = value.n_states
"""Get [`EXAC4`](@ref) `internal`."""
get_internal(value::EXAC4) = value.internal

"""Set [`EXAC4`](@ref) `Tr`."""
set_Tr!(value::EXAC4, val) = value.Tr = val
"""Set [`EXAC4`](@ref) `Vi_lim`."""
set_Vi_lim!(value::EXAC4, val) = value.Vi_lim = val
"""Set [`EXAC4`](@ref) `Tc`."""
set_Tc!(value::EXAC4, val) = value.Tc = val
"""Set [`EXAC4`](@ref) `Tb`."""
set_Tb!(value::EXAC4, val) = value.Tb = val
"""Set [`EXAC4`](@ref) `Ka`."""
set_Ka!(value::EXAC4, val) = value.Ka = val
"""Set [`EXAC4`](@ref) `Ta`."""
set_Ta!(value::EXAC4, val) = value.Ta = val
"""Set [`EXAC4`](@ref) `Vr_lim`."""
set_Vr_lim!(value::EXAC4, val) = value.Vr_lim = val
"""Set [`EXAC4`](@ref) `Kc`."""
set_Kc!(value::EXAC4, val) = value.Kc = val
"""Set [`EXAC4`](@ref) `V_ref`."""
set_V_ref!(value::EXAC4, val) = value.V_ref = val
"""Set [`EXAC4`](@ref) `ext`."""
set_ext!(value::EXAC4, val) = value.ext = val
