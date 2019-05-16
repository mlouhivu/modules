-- This is the lua module file for GPAW

local version = '1.1.0'
local base = '/appl/nano/gpaw/' .. version

help([[
        GPAW ]] .. version .. [[
]])

prereq('python-env/2.7.10', 'ase/3.11.0', 'mkl/11.3.0', 'hdf5-par/1.8.15')

prepend_path('PYTHONPATH', pathJoin(base, 'lib/python'))
prepend_path('PATH', pathJoin(base, 'bin'))

