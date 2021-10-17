using DifferentialEquations
using Plots
using CairoMakie

f(v,t) = 9.8 - v/5
v0 = 1
tspan = (0,5)
prob = ODEProblem(f,v0,tspan)

sol = solve(prob)

#plot da solução para a velocidade inicial de 1 m/s
using Plots;gr()
plot(sol)

