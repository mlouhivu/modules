-- Lua module file for Cython 

help([[
        Cython 0.23
]])

local base = '/homeappl/home/louhivuo/appl_taito/cython-0.23'

prepend_path('PYTHONPATH', base)
prepend_path('PATH', pathJoin(base, 'bin'))

