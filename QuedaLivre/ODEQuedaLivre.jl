using DifferentialEquations
using Plots

f(v,t) = 9.8 - v/5
v0 = 1
tspan = (0,5)
prob = ODEProblem(f,v0,tspan)

sol = solve(prob)

using Plots;gr()
plot(sol)