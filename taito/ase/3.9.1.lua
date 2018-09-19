-- Lua module file for ASE compiled with Intel stack (incl. MKL)

help([[
        Atomic Simulation Environment 3.9.1
]])

load("python/2.7.10-icc")

local base = '/homeappl/home/louhivuo/appl_taito/ase-3.9.1'

prepend_path('PYTHONPATH', pathJoin(base, 'lib'))
prepend_path('PATH', pathJoin(base, 'bin'))

