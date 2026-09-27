#=
This file is auto-generated. Do not edit.
=#

#! format: off

"""
    mutable struct DataCenterLoad <: DynamicInjection
        name::String
        ω_lp::Float64
        kp_pll::Float64
        ki_pll::Float64
        r_afe::Float64
        l_afe::Float64
        kp_dc_afe::Float64
        ki_dc_afe::Float64
        kp_c_afe::Float64
        ki_c_afe::Float64
        c_dc::Float64
        r_vsi::Float64
        l_vsi::Float64
        c_vsi::Float64
        v_vsi_ref::Float64
        kp_v_vsi::Float64
        ki_v_vsi::Float64
        kp_c_vsi::Float64
        ki_c_vsi::Float64
        c_psu::Float64
        r_psu::Float64
        v_psu_ref::Float64
        kp_v_psu::Float64
        ki_v_psu::Float64
        c_eq::Float64
        v_eq_ref::Float64
        kp_v_eq::Float64
        ki_v_eq::Float64
        base_power::Float64
        ext::Dict{String, Any}
        P_ref::Float64
        Q_ref::Float64
        V_ref::Float64
        ω_ref::Float64
        states::Vector{Symbol}
        n_states::Int
        internal::InfrastructureSystemsInternal
    end

Parameters of 21-[states](@ref S) data center load based on the paper, ["Dynamic Modeling of Data-Center Power Delivery for Power System Resonance Analysis."](https://arxiv.org/abs/2604.06624): AFE rectifier, UPS DC link, VSI, PSU array, and downstream DC-DC converter with load equivalent

# Arguments
- `name::String`: Name of the component. Components of the same type (e.g., `PowerLoad`) must have unique names, but components of different types (e.g., `PowerLoad` and `ACBus`) can have the same name
- `ω_lp::Float64`: (default: `628.3185307179587`) PLL low-pass filter cutoff frequency (rad/s), validation range: `(0, nothing)`
- `kp_pll::Float64`: (default: `0.4713333333333334`) Proportional gain of the PLL, validation range: `(0, nothing)`
- `ki_pll::Float64`: (default: `41.88790204786391`) Integral gain of the PLL, validation range: `(0, nothing)`
- `r_afe::Float64`: (default: `0.003`) AFE filter resistance, validation range: `(0, nothing)`
- `l_afe::Float64`: (default: `0.05`) AFE filter inductance, validation range: `(0, nothing)`
- `kp_dc_afe::Float64`: (default: `0.33333333333333337`) Proportional gain of the AFE DC-voltage control, validation range: `(0, nothing)`
- `ki_dc_afe::Float64`: (default: `5.235987755982989`) Integral gain of the AFE DC-voltage control, validation range: `(0, nothing)`
- `kp_c_afe::Float64`: (default: `0.2326666666666667`) Proportional gain of the AFE current control, validation range: `(0, nothing)`
- `ki_c_afe::Float64`: (default: `209.43951023931962`) Integral gain of the AFE current control, validation range: `(0, nothing)`
- `c_dc::Float64`: (default: `2.0`) UPS DC-link capacitance, validation range: `(0, nothing)`
- `r_vsi::Float64`: (default: `0.003`) VSI filter resistance, validation range: `(0, nothing)`
- `l_vsi::Float64`: (default: `0.05`) VSI filter inductance, validation range: `(0, nothing)`
- `c_vsi::Float64`: (default: `0.2`) VSI filter capacitance, validation range: `(0, nothing)`
- `v_vsi_ref::Float64`: (default: `1.0`) VSI AC-voltage reference, validation range: `(0, nothing)`
- `kp_v_vsi::Float64`: (default: `0.6666666666666667`) Proportional gain of the VSI voltage control, validation range: `(0, nothing)`
- `ki_v_vsi::Float64`: (default: `209.43951023931962`) Integral gain of the VSI voltage control, validation range: `(0, nothing)`
- `kp_c_vsi::Float64`: (default: `0.6636666666666667`) Proportional gain of the VSI current control, validation range: `(0, nothing)`
- `ki_c_vsi::Float64`: (default: `837.7580409572785`) Integral gain of the VSI current control, validation range: `(0, nothing)`
- `c_psu::Float64`: (default: `2.0`) PSU DC-port capacitance, validation range: `(0, nothing)`
- `r_psu::Float64`: (default: `0.005`) PSU equivalent resistance, validation range: `(0, nothing)`
- `v_psu_ref::Float64`: (default: `1.0`) PSU DC-voltage reference, validation range: `(0, nothing)`
- `kp_v_psu::Float64`: (default: `0.6666666666666667`) Proportional gain of the PSU voltage control, validation range: `(0, nothing)`
- `ki_v_psu::Float64`: (default: `20.943951023931955`) Integral gain of the PSU voltage control, validation range: `(0, nothing)`
- `c_eq::Float64`: (default: `0.2`) Load-side equivalent capacitance, validation range: `(0, nothing)`
- `v_eq_ref::Float64`: (default: `0.5`) Load-side DC-voltage reference, validation range: `(0, nothing)`
- `kp_v_eq::Float64`: (default: `0.6666666666666667`) Proportional gain of the load-side voltage control, validation range: `(0, nothing)`
- `ki_v_eq::Float64`: (default: `209.43951023931962`) Integral gain of the load-side voltage control, validation range: `(0, nothing)`
- `base_power::Float64`: (default: `100.0`) Base power of the unit (MVA) for [per unitization](@ref per_unit), validation range: `(0.0001, nothing)`
- `ext::Dict{String, Any}`: (default: `Dict{String, Any}()`) An [*ext*ra dictionary](@ref additional_fields) for users to add metadata that are not used in simulation.
- `P_ref::Float64`: Server load demand p_load (pu)
- `Q_ref::Float64`: AFE q-axis current reference (pu)
- `V_ref::Float64`: UPS DC-link voltage reference (pu)
- `ω_ref::Float64`: Reference frequency (pu)
- `states::Vector{Symbol}`: (**Do not modify.**) The [states](@ref S) are:
	θ_pll: PLL angle,
	ϵ_pll: PLL integrator state,
	vq_pll: PLL filtered q-axis voltage,
	id_afe: AFE d-axis current,
	iq_afe: AFE q-axis current,
	ξ_dc_afe: AFE DC-voltage control integrator state,
	γd_afe: AFE d-axis current control integrator state,
	γq_afe: AFE q-axis current control integrator state,
	v_dc: UPS DC-link voltage,
	iu_cv: VSI u-axis converter current,
	iv_cv: VSI v-axis converter current,
	vu_vsi: VSI u-axis capacitor voltage,
	vv_vsi: VSI v-axis capacitor voltage,
	ξu_vsi: VSI u-axis voltage control integrator state,
	ξv_vsi: VSI v-axis voltage control integrator state,
	γu_vsi: VSI u-axis current control integrator state,
	γv_vsi: VSI v-axis current control integrator state,
	v_psu: PSU DC-port voltage,
	ξ_psu: PSU voltage control integrator state,
	v_eq: Load-side DC voltage,
	ξ_eq: Load-side voltage control integrator state
- `n_states::Int`: (**Do not modify.**) DataCenterLoad has 21 states
- `internal::InfrastructureSystemsInternal`: (**Do not modify.**) PowerSystems.jl internal reference
"""
mutable struct DataCenterLoad <: DynamicInjection
    "Name of the component. Components of the same type (e.g., `PowerLoad`) must have unique names, but components of different types (e.g., `PowerLoad` and `ACBus`) can have the same name"
    name::String
    "PLL low-pass filter cutoff frequency (rad/s)"
    ω_lp::Float64
    "Proportional gain of the PLL"
    kp_pll::Float64
    "Integral gain of the PLL"
    ki_pll::Float64
    "AFE filter resistance"
    r_afe::Float64
    "AFE filter inductance"
    l_afe::Float64
    "Proportional gain of the AFE DC-voltage control"
    kp_dc_afe::Float64
    "Integral gain of the AFE DC-voltage control"
    ki_dc_afe::Float64
    "Proportional gain of the AFE current control"
    kp_c_afe::Float64
    "Integral gain of the AFE current control"
    ki_c_afe::Float64
    "UPS DC-link capacitance"
    c_dc::Float64
    "VSI filter resistance"
    r_vsi::Float64
    "VSI filter inductance"
    l_vsi::Float64
    "VSI filter capacitance"
    c_vsi::Float64
    "VSI AC-voltage reference"
    v_vsi_ref::Float64
    "Proportional gain of the VSI voltage control"
    kp_v_vsi::Float64
    "Integral gain of the VSI voltage control"
    ki_v_vsi::Float64
    "Proportional gain of the VSI current control"
    kp_c_vsi::Float64
    "Integral gain of the VSI current control"
    ki_c_vsi::Float64
    "PSU DC-port capacitance"
    c_psu::Float64
    "PSU equivalent resistance"
    r_psu::Float64
    "PSU DC-voltage reference"
    v_psu_ref::Float64
    "Proportional gain of the PSU voltage control"
    kp_v_psu::Float64
    "Integral gain of the PSU voltage control"
    ki_v_psu::Float64
    "Load-side equivalent capacitance"
    c_eq::Float64
    "Load-side DC-voltage reference"
    v_eq_ref::Float64
    "Proportional gain of the load-side voltage control"
    kp_v_eq::Float64
    "Integral gain of the load-side voltage control"
    ki_v_eq::Float64
    "Base power of the unit (MVA) for [per unitization](@ref per_unit)"
    base_power::Float64
    "An [*ext*ra dictionary](@ref additional_fields) for users to add metadata that are not used in simulation."
    ext::Dict{String, Any}
    "Server load demand p_load (pu)"
    P_ref::Float64
    "AFE q-axis current reference (pu)"
    Q_ref::Float64
    "UPS DC-link voltage reference (pu)"
    V_ref::Float64
    "Reference frequency (pu)"
    ω_ref::Float64
    "(**Do not modify.**) The [states](@ref S) are:
	θ_pll: PLL angle,
	ϵ_pll: PLL integrator state,
	vq_pll: PLL filtered q-axis voltage,
	id_afe: AFE d-axis current,
	iq_afe: AFE q-axis current,
	ξ_dc_afe: AFE DC-voltage control integrator state,
	γd_afe: AFE d-axis current control integrator state,
	γq_afe: AFE q-axis current control integrator state,
	v_dc: UPS DC-link voltage,
	iu_cv: VSI u-axis converter current,
	iv_cv: VSI v-axis converter current,
	vu_vsi: VSI u-axis capacitor voltage,
	vv_vsi: VSI v-axis capacitor voltage,
	ξu_vsi: VSI u-axis voltage control integrator state,
	ξv_vsi: VSI v-axis voltage control integrator state,
	γu_vsi: VSI u-axis current control integrator state,
	γv_vsi: VSI v-axis current control integrator state,
	v_psu: PSU DC-port voltage,
	ξ_psu: PSU voltage control integrator state,
	v_eq: Load-side DC voltage,
	ξ_eq: Load-side voltage control integrator state"
    states::Vector{Symbol}
    "(**Do not modify.**) DataCenterLoad has 21 states"
    n_states::Int
    "(**Do not modify.**) PowerSystems.jl internal reference"
    internal::InfrastructureSystemsInternal
end

function DataCenterLoad(name, ω_lp=628.3185307179587, kp_pll=0.4713333333333334, ki_pll=41.88790204786391, r_afe=0.003, l_afe=0.05, kp_dc_afe=0.33333333333333337, ki_dc_afe=5.235987755982989, kp_c_afe=0.2326666666666667, ki_c_afe=209.43951023931962, c_dc=2.0, r_vsi=0.003, l_vsi=0.05, c_vsi=0.2, v_vsi_ref=1.0, kp_v_vsi=0.6666666666666667, ki_v_vsi=209.43951023931962, kp_c_vsi=0.6636666666666667, ki_c_vsi=837.7580409572785, c_psu=2.0, r_psu=0.005, v_psu_ref=1.0, kp_v_psu=0.6666666666666667, ki_v_psu=20.943951023931955, c_eq=0.2, v_eq_ref=0.5, kp_v_eq=0.6666666666666667, ki_v_eq=209.43951023931962, base_power=100.0, ext=Dict{String, Any}(), )
    DataCenterLoad(name, ω_lp, kp_pll, ki_pll, r_afe, l_afe, kp_dc_afe, ki_dc_afe, kp_c_afe, ki_c_afe, c_dc, r_vsi, l_vsi, c_vsi, v_vsi_ref, kp_v_vsi, ki_v_vsi, kp_c_vsi, ki_c_vsi, c_psu, r_psu, v_psu_ref, kp_v_psu, ki_v_psu, c_eq, v_eq_ref, kp_v_eq, ki_v_eq, base_power, ext, 0.5, 0.0, 1.0, 1.0, [:θ_pll, :ϵ_pll, :vq_pll, :id_afe, :iq_afe, :ξ_dc_afe, :γd_afe, :γq_afe, :v_dc, :iu_cv, :iv_cv, :vu_vsi, :vv_vsi, :ξu_vsi, :ξv_vsi, :γu_vsi, :γv_vsi, :v_psu, :ξ_psu, :v_eq, :ξ_eq], 21, InfrastructureSystemsInternal(), )
end

function DataCenterLoad(; name, ω_lp=628.3185307179587, kp_pll=0.4713333333333334, ki_pll=41.88790204786391, r_afe=0.003, l_afe=0.05, kp_dc_afe=0.33333333333333337, ki_dc_afe=5.235987755982989, kp_c_afe=0.2326666666666667, ki_c_afe=209.43951023931962, c_dc=2.0, r_vsi=0.003, l_vsi=0.05, c_vsi=0.2, v_vsi_ref=1.0, kp_v_vsi=0.6666666666666667, ki_v_vsi=209.43951023931962, kp_c_vsi=0.6636666666666667, ki_c_vsi=837.7580409572785, c_psu=2.0, r_psu=0.005, v_psu_ref=1.0, kp_v_psu=0.6666666666666667, ki_v_psu=20.943951023931955, c_eq=0.2, v_eq_ref=0.5, kp_v_eq=0.6666666666666667, ki_v_eq=209.43951023931962, base_power=100.0, ext=Dict{String, Any}(), P_ref=0.5, Q_ref=0.0, V_ref=1.0, ω_ref=1.0, states=[:θ_pll, :ϵ_pll, :vq_pll, :id_afe, :iq_afe, :ξ_dc_afe, :γd_afe, :γq_afe, :v_dc, :iu_cv, :iv_cv, :vu_vsi, :vv_vsi, :ξu_vsi, :ξv_vsi, :γu_vsi, :γv_vsi, :v_psu, :ξ_psu, :v_eq, :ξ_eq], n_states=21, internal=InfrastructureSystemsInternal(), )
    DataCenterLoad(name, ω_lp, kp_pll, ki_pll, r_afe, l_afe, kp_dc_afe, ki_dc_afe, kp_c_afe, ki_c_afe, c_dc, r_vsi, l_vsi, c_vsi, v_vsi_ref, kp_v_vsi, ki_v_vsi, kp_c_vsi, ki_c_vsi, c_psu, r_psu, v_psu_ref, kp_v_psu, ki_v_psu, c_eq, v_eq_ref, kp_v_eq, ki_v_eq, base_power, ext, P_ref, Q_ref, V_ref, ω_ref, states, n_states, internal, )
end

# Constructor for demo purposes; non-functional.
function DataCenterLoad(::Nothing)
    DataCenterLoad(;
        name="init",
        ω_lp=0,
        kp_pll=0,
        ki_pll=0,
        r_afe=0,
        l_afe=0,
        kp_dc_afe=0,
        ki_dc_afe=0,
        kp_c_afe=0,
        ki_c_afe=0,
        c_dc=0,
        r_vsi=0,
        l_vsi=0,
        c_vsi=0,
        v_vsi_ref=0,
        kp_v_vsi=0,
        ki_v_vsi=0,
        kp_c_vsi=0,
        ki_c_vsi=0,
        c_psu=0,
        r_psu=0,
        v_psu_ref=0,
        kp_v_psu=0,
        ki_v_psu=0,
        c_eq=0,
        v_eq_ref=0,
        kp_v_eq=0,
        ki_v_eq=0,
        base_power=100,
        ext=Dict{String, Any}(),
    )
end

"""Get [`DataCenterLoad`](@ref) `name`."""
get_name(value::DataCenterLoad) = value.name
"""Get [`DataCenterLoad`](@ref) `ω_lp`."""
get_ω_lp(value::DataCenterLoad) = value.ω_lp
"""Get [`DataCenterLoad`](@ref) `kp_pll`."""
get_kp_pll(value::DataCenterLoad) = value.kp_pll
"""Get [`DataCenterLoad`](@ref) `ki_pll`."""
get_ki_pll(value::DataCenterLoad) = value.ki_pll
"""Get [`DataCenterLoad`](@ref) `r_afe`."""
get_r_afe(value::DataCenterLoad) = value.r_afe
"""Get [`DataCenterLoad`](@ref) `l_afe`."""
get_l_afe(value::DataCenterLoad) = value.l_afe
"""Get [`DataCenterLoad`](@ref) `kp_dc_afe`."""
get_kp_dc_afe(value::DataCenterLoad) = value.kp_dc_afe
"""Get [`DataCenterLoad`](@ref) `ki_dc_afe`."""
get_ki_dc_afe(value::DataCenterLoad) = value.ki_dc_afe
"""Get [`DataCenterLoad`](@ref) `kp_c_afe`."""
get_kp_c_afe(value::DataCenterLoad) = value.kp_c_afe
"""Get [`DataCenterLoad`](@ref) `ki_c_afe`."""
get_ki_c_afe(value::DataCenterLoad) = value.ki_c_afe
"""Get [`DataCenterLoad`](@ref) `c_dc`."""
get_c_dc(value::DataCenterLoad) = value.c_dc
"""Get [`DataCenterLoad`](@ref) `r_vsi`."""
get_r_vsi(value::DataCenterLoad) = value.r_vsi
"""Get [`DataCenterLoad`](@ref) `l_vsi`."""
get_l_vsi(value::DataCenterLoad) = value.l_vsi
"""Get [`DataCenterLoad`](@ref) `c_vsi`."""
get_c_vsi(value::DataCenterLoad) = value.c_vsi
"""Get [`DataCenterLoad`](@ref) `v_vsi_ref`."""
get_v_vsi_ref(value::DataCenterLoad) = value.v_vsi_ref
"""Get [`DataCenterLoad`](@ref) `kp_v_vsi`."""
get_kp_v_vsi(value::DataCenterLoad) = value.kp_v_vsi
"""Get [`DataCenterLoad`](@ref) `ki_v_vsi`."""
get_ki_v_vsi(value::DataCenterLoad) = value.ki_v_vsi
"""Get [`DataCenterLoad`](@ref) `kp_c_vsi`."""
get_kp_c_vsi(value::DataCenterLoad) = value.kp_c_vsi
"""Get [`DataCenterLoad`](@ref) `ki_c_vsi`."""
get_ki_c_vsi(value::DataCenterLoad) = value.ki_c_vsi
"""Get [`DataCenterLoad`](@ref) `c_psu`."""
get_c_psu(value::DataCenterLoad) = value.c_psu
"""Get [`DataCenterLoad`](@ref) `r_psu`."""
get_r_psu(value::DataCenterLoad) = value.r_psu
"""Get [`DataCenterLoad`](@ref) `v_psu_ref`."""
get_v_psu_ref(value::DataCenterLoad) = value.v_psu_ref
"""Get [`DataCenterLoad`](@ref) `kp_v_psu`."""
get_kp_v_psu(value::DataCenterLoad) = value.kp_v_psu
"""Get [`DataCenterLoad`](@ref) `ki_v_psu`."""
get_ki_v_psu(value::DataCenterLoad) = value.ki_v_psu
"""Get [`DataCenterLoad`](@ref) `c_eq`."""
get_c_eq(value::DataCenterLoad) = value.c_eq
"""Get [`DataCenterLoad`](@ref) `v_eq_ref`."""
get_v_eq_ref(value::DataCenterLoad) = value.v_eq_ref
"""Get [`DataCenterLoad`](@ref) `kp_v_eq`."""
get_kp_v_eq(value::DataCenterLoad) = value.kp_v_eq
"""Get [`DataCenterLoad`](@ref) `ki_v_eq`."""
get_ki_v_eq(value::DataCenterLoad) = value.ki_v_eq
"""Get [`DataCenterLoad`](@ref) `base_power`."""
get_base_power(value::DataCenterLoad) = value.base_power
"""Get [`DataCenterLoad`](@ref) `ext`."""
get_ext(value::DataCenterLoad) = value.ext
"""Get [`DataCenterLoad`](@ref) `P_ref`."""
get_P_ref(value::DataCenterLoad) = value.P_ref
"""Get [`DataCenterLoad`](@ref) `Q_ref`."""
get_Q_ref(value::DataCenterLoad) = value.Q_ref
"""Get [`DataCenterLoad`](@ref) `V_ref`."""
get_V_ref(value::DataCenterLoad) = value.V_ref
"""Get [`DataCenterLoad`](@ref) `ω_ref`."""
get_ω_ref(value::DataCenterLoad) = value.ω_ref
"""Get [`DataCenterLoad`](@ref) `states`."""
get_states(value::DataCenterLoad) = value.states
"""Get [`DataCenterLoad`](@ref) `n_states`."""
get_n_states(value::DataCenterLoad) = value.n_states
"""Get [`DataCenterLoad`](@ref) `internal`."""
get_internal(value::DataCenterLoad) = value.internal

"""Set [`DataCenterLoad`](@ref) `ω_lp`."""
set_ω_lp!(value::DataCenterLoad, val) = value.ω_lp = val
"""Set [`DataCenterLoad`](@ref) `kp_pll`."""
set_kp_pll!(value::DataCenterLoad, val) = value.kp_pll = val
"""Set [`DataCenterLoad`](@ref) `ki_pll`."""
set_ki_pll!(value::DataCenterLoad, val) = value.ki_pll = val
"""Set [`DataCenterLoad`](@ref) `r_afe`."""
set_r_afe!(value::DataCenterLoad, val) = value.r_afe = val
"""Set [`DataCenterLoad`](@ref) `l_afe`."""
set_l_afe!(value::DataCenterLoad, val) = value.l_afe = val
"""Set [`DataCenterLoad`](@ref) `kp_dc_afe`."""
set_kp_dc_afe!(value::DataCenterLoad, val) = value.kp_dc_afe = val
"""Set [`DataCenterLoad`](@ref) `ki_dc_afe`."""
set_ki_dc_afe!(value::DataCenterLoad, val) = value.ki_dc_afe = val
"""Set [`DataCenterLoad`](@ref) `kp_c_afe`."""
set_kp_c_afe!(value::DataCenterLoad, val) = value.kp_c_afe = val
"""Set [`DataCenterLoad`](@ref) `ki_c_afe`."""
set_ki_c_afe!(value::DataCenterLoad, val) = value.ki_c_afe = val
"""Set [`DataCenterLoad`](@ref) `c_dc`."""
set_c_dc!(value::DataCenterLoad, val) = value.c_dc = val
"""Set [`DataCenterLoad`](@ref) `r_vsi`."""
set_r_vsi!(value::DataCenterLoad, val) = value.r_vsi = val
"""Set [`DataCenterLoad`](@ref) `l_vsi`."""
set_l_vsi!(value::DataCenterLoad, val) = value.l_vsi = val
"""Set [`DataCenterLoad`](@ref) `c_vsi`."""
set_c_vsi!(value::DataCenterLoad, val) = value.c_vsi = val
"""Set [`DataCenterLoad`](@ref) `v_vsi_ref`."""
set_v_vsi_ref!(value::DataCenterLoad, val) = value.v_vsi_ref = val
"""Set [`DataCenterLoad`](@ref) `kp_v_vsi`."""
set_kp_v_vsi!(value::DataCenterLoad, val) = value.kp_v_vsi = val
"""Set [`DataCenterLoad`](@ref) `ki_v_vsi`."""
set_ki_v_vsi!(value::DataCenterLoad, val) = value.ki_v_vsi = val
"""Set [`DataCenterLoad`](@ref) `kp_c_vsi`."""
set_kp_c_vsi!(value::DataCenterLoad, val) = value.kp_c_vsi = val
"""Set [`DataCenterLoad`](@ref) `ki_c_vsi`."""
set_ki_c_vsi!(value::DataCenterLoad, val) = value.ki_c_vsi = val
"""Set [`DataCenterLoad`](@ref) `c_psu`."""
set_c_psu!(value::DataCenterLoad, val) = value.c_psu = val
"""Set [`DataCenterLoad`](@ref) `r_psu`."""
set_r_psu!(value::DataCenterLoad, val) = value.r_psu = val
"""Set [`DataCenterLoad`](@ref) `v_psu_ref`."""
set_v_psu_ref!(value::DataCenterLoad, val) = value.v_psu_ref = val
"""Set [`DataCenterLoad`](@ref) `kp_v_psu`."""
set_kp_v_psu!(value::DataCenterLoad, val) = value.kp_v_psu = val
"""Set [`DataCenterLoad`](@ref) `ki_v_psu`."""
set_ki_v_psu!(value::DataCenterLoad, val) = value.ki_v_psu = val
"""Set [`DataCenterLoad`](@ref) `c_eq`."""
set_c_eq!(value::DataCenterLoad, val) = value.c_eq = val
"""Set [`DataCenterLoad`](@ref) `v_eq_ref`."""
set_v_eq_ref!(value::DataCenterLoad, val) = value.v_eq_ref = val
"""Set [`DataCenterLoad`](@ref) `kp_v_eq`."""
set_kp_v_eq!(value::DataCenterLoad, val) = value.kp_v_eq = val
"""Set [`DataCenterLoad`](@ref) `ki_v_eq`."""
set_ki_v_eq!(value::DataCenterLoad, val) = value.ki_v_eq = val
"""Set [`DataCenterLoad`](@ref) `base_power`."""
set_base_power!(value::DataCenterLoad, val) = value.base_power = val
"""Set [`DataCenterLoad`](@ref) `ext`."""
set_ext!(value::DataCenterLoad, val) = value.ext = val
"""Set [`DataCenterLoad`](@ref) `P_ref`."""
set_P_ref!(value::DataCenterLoad, val) = value.P_ref = val
"""Set [`DataCenterLoad`](@ref) `Q_ref`."""
set_Q_ref!(value::DataCenterLoad, val) = value.Q_ref = val
"""Set [`DataCenterLoad`](@ref) `V_ref`."""
set_V_ref!(value::DataCenterLoad, val) = value.V_ref = val
"""Set [`DataCenterLoad`](@ref) `ω_ref`."""
set_ω_ref!(value::DataCenterLoad, val) = value.ω_ref = val
