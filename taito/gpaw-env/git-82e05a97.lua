-- This is the lua module file for GPAW environment

local git_commit = '82e05a97'
local gpaw_setups = '0.9.20000'
local version = 'git (commit ' .. git_commit .. ')'

help([[
        GPAW environment ]] .. version .. [[

		Note: will remove all other modules when loaded!
]])

purgeAndLoad('python-env/2.7.10', 'hdf5-par/1.8.15', 
'openblas/0.2.18', 'ase/git', 'gpaw-setups/' .. gpaw_setups, 'libxc/2.1.3', 
'gpaw/git')

if mode() == 'load' then
	LmodMessage('----------------------------------------------------------------------------')
    LmodMessage('  Experimental development version of GPAW loaded (git commit ' .. git_commit ..')')
	LmodMessage('')
    LmodMessage('  WARNING: THIS VERSION MAY GIVE INCORRECT RESULTS AND')
    LmodMessage('           SHOULD NOT BE USED FOR PRODUCTION!')
	LmodMessage('')
	LmodMessage('  Please consider using a stable release instead:')
	LmodMessage('    module load gpaw-env/1.1.0')
	LmodMessage('----------------------------------------------------------------------------')
end
