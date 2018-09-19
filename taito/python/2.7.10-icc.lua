-- Lua module file for Python compiled with Intel stack (incl. MKL)

help([[
        Python 2.7.10, Intel compiler + MKL
]])

load("intel/16.0.0", "mkl/11.3.0", "intelmpi/5.1.1")

local base = '/homeappl/home/louhivuo/appl_taito/python-2.7.10'

setenv('PYTHONHOME', base)
prepend_path('PYTHONPATH', pathJoin(base, 'lib'))
prepend_path('PATH', pathJoin(base, 'bin'))

