-- This is the lua module file for GPAW environment

local git_commit = 'fbad0778'
local gpaw_setups = '0.9.20000'
local version = 'git (commit ' .. git_commit .. ')'

help([[
        GPAW environment ]] .. version .. [[

		Note: will remove all other modules when loaded!
]])

purgeAndLoad('gcc/4.9.3', 'mkl/11.3.0', 'intelmpi/5.1.1', 'hdf5-par/1.8.15',
'gpaw-setups/' .. gpaw_setups, 'libxc/4.0.2', 'gpaw/git')

setenv('OMP_NUM_THREADS', 1)

if mode() == 'load' then
	LmodMessage('----------------------------------------------------------------------------')
    LmodMessage('  Experimental development version of GPAW loaded (git commit ' .. git_commit ..')')
	LmodMessage('')
    LmodMessage('  WARNING: THIS VERSION MAY GIVE INCORRECT RESULTS AND')
    LmodMessage('           SHOULD NOT BE USED FOR PRODUCTION!')
	LmodMessage('')
	LmodMessage('  Please consider using a stable release instead:')
	LmodMessage('    module load gpaw-env/1.4.0')
	LmodMessage('----------------------------------------------------------------------------')
end
