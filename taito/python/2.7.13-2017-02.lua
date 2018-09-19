-- Lua module file for Python compiled with Intel stack (incl. MKL)

help([[
        Python 2.7.13
		  w/ numpy 0.12.1 + scipy 0.18.1 + ase 3.13.0
]])

load('gcc/4.9.3', 'mkl/11.3.0', 'intelmpi/5.1.1')

local base = '/appl/nano/gpaw/python/2.7.13'
local bundle = '2017-02'

setenv('PYTHONHOME', base)
prepend_path('PYTHONPATH', pathJoin(base, 'lib'))
prepend_path('PATH', pathJoin(base, 'bin'))
prepend_path('PATH', pathJoin(base, pathJoin('bundle', pathJoin(bundle, 'bin'))))
prepend_path('LD_LIBRARY_PATH', pathJoin(base, 'lib'))
setenv('PYTHONUSERBASE', pathJoin(base, pathJoin('bundle', bundle)))

