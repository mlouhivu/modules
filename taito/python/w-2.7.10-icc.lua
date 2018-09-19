-- Lua module file for Python compiled with Intel stack (incl. MKL)

help([[
        Python 2.7.10, Intel compiler + MKL
]])

load("intel/15.0.2", "mkl/11.2.2", "intelmpi/5.0.2")

local base = '/homeappl/home/louhivuo/appl_taito/python-2.7.10-icc'

setenv('PYTHONHOME', base)
prepend_path('PYTHONPATH', pathJoin(base, 'lib'))
prepend_path('PATH', pathJoin(base, 'bin'))

