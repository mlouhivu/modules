-- Lua module file for ASE built using
--   python-env/2.7.10

local git_commit = '6441513e'
local version = 'git (commit ' .. git_commit .. ')'
local base = '/appl/nano/ase/git-' .. git_commit

help([[
        Atomic Simulation Environment ]] .. version .. [[
]])

prepend_path('PYTHONPATH', pathJoin(base, 'lib/python'))
prepend_path('PATH', pathJoin(base, 'bin'))

