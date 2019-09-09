-- This is the module file for GPAW environment
local version = '1.4.0'

help([[
         GPAW environment ]] .. version .. [[
]])

depends_on('gcc/9.1.0', 'mpich/3.3.1',  'hdf5/1.10.4', 'intel-mkl/2019.0.4')

local base = '/appl/soft/phys/gpaw/' .. version
local py_base = '/appl/soft/phys/gpaw/python/2.7.13'
local bundle = '2018-03'

setenv('LIBXCDIR', '/appl/soft/phys/libxc/3.0.0')
setenv('GPAW_SETUP_PATH', pathJoin('/appl/soft/phys/gpaw-setups', '0.9.20000'))

setenv('PYTHONHOME', py_base)
prepend_path('PYTHONPATH', pathJoin(py_base, 'lib'))
prepend_path('PATH', pathJoin(py_base, 'bin'))
prepend_path('PATH', pathJoin(py_base, 'bundle', bundle, 'bin'))
prepend_path('LD_LIBRARY_PATH', pathJoin(py_base, 'lib'))
setenv('PYTHONUSERBASE', pathJoin(py_base, 'bundle', bundle))

prepend_path('PYTHONPATH', pathJoin(base, 'lib/python2.7/site-packages'))
prepend_path('PATH', pathJoin(base, 'bin'))
setenv('GPAW_PYTHON', pathJoin(base, 'bin/gpaw-python'))

