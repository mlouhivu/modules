-- This is the lua module file for GPAW

local pkgVersion = '3.8.1'
local pkgNameVer = pathJoin('ase', pkgVersion) 
local install_root = '/appl/nano'

help([[
	This loads the Atomic Simulation Environment.
	Version ]] .. pkgVersion .. [[

	Modifies: PATH, PYTHONPATH
]])

-- prereq('python/2.7.3')

prepend_path('PATH', pathJoin(install_root, pkgNameVer, 'bin'))

prepend_path('PYTHONPATH', pathJoin(install_root, pkgNameVer, 'lib/python'))
prepend_path('PATH', pathJoin(install_root, pkgNameVer, 'bin'))

