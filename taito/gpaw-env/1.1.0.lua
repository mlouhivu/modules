-- This is the lua module file for GPAW environment

local version = '1.1.0'

help([[
        GPAW environment ]] .. version .. [[

		Note: will remove all other modules when loaded!
]])

purgeAndLoad('python-env/2.7.10', 'hdf5-par/1.8.15', 'openblas/0.2.18', 
'ase/3.11.0', 'gpaw-setups/0.9.11271', 'libxc/2.1.3', 'gpaw/1.1.0')

