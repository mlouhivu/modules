-- This is the lua module file for GPAW

local version = 'cuda'
local base = '/homeappl/home/louhivuo/appl_taito/gpaw-cuda-openblas'

help([[
        GPAW ]] .. version .. [[
]])

load('python/cuda-2016-06-openblas', 'gpaw-setups/0.9.11271')

prepend_path('PYTHONPATH', pathJoin(base, 'lib/python2.7/site-packages'))
prepend_path('PATH', pathJoin(base, 'bin'))
