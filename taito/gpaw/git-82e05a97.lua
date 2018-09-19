-- This is the lua module file for GPAW

local git_commit = '82e05a97'
local version = 'git (commit ' .. git_commit .. ')'
local base = '/appl/nano/gpaw/git-' .. git_commit

help([[
        GPAW ]] .. version .. [[
]])

prereq('python-env/2.7.10', 'ase/git', 'mkl/11.3.0', 'hdf5-par/1.8.15')

prepend_path('PYTHONPATH', pathJoin(base, 'lib/python'))
prepend_path('PATH', pathJoin(base, 'bin'))

