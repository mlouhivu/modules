-- This is the lua module file for GPAW

local version = '1.3.0'
local base = '/appl/nano/gpaw/' .. version
local py_base = '/appl/nano/gpaw/python/2.7.13'
local bundle = '2017-10'

help([[
        GPAW ]] .. version .. [[
]])

prereq('gcc/4.9.3', 'mkl/11.3.0', 'intelmpi/5.1.1', 'hdf5-par/1.8.15')

setenv('PYTHONHOME', py_base)
prepend_path('PYTHONPATH', pathJoin(py_base, 'lib'))
prepend_path('PATH', pathJoin(py_base, 'bin'))
prepend_path('PATH', pathJoin(py_base, pathJoin('bundle', pathJoin(bundle, 'bin'))))
prepend_path('LD_LIBRARY_PATH', pathJoin(py_base, 'lib'))
setenv('PYTHONUSERBASE', pathJoin(py_base, pathJoin('bundle', bundle)))

prepend_path('PYTHONPATH', pathJoin(base, 'lib/python2.7/site-packages'))
prepend_path('PATH', pathJoin(base, 'bin'))
setenv('GPAW_PYTHON', pathJoin(base, 'bin/gpaw-python'))

