-- Lua module file for ASE built using
--   python-env/2.7.10

local version = '3.11.0'
local base = '/appl/nano/ase/' .. version

help([[
        Atomic Simulation Environment ]] .. version .. [[
]])

prepend_path('PYTHONPATH', pathJoin(base, 'lib/python'))
prepend_path('PATH', pathJoin(base, 'bin'))

