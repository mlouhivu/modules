-- This is the lua module file for GPAW environment

local version = '1.2.0'

help([[
        GPAW environment ]] .. version .. [[

		Note: will remove all other modules when loaded!
]])

purgeAndLoad('gcc/4.9.3', 'mkl/11.3.0', 'intelmpi/5.1.1', 'hdf5-par/1.8.15',
'gpaw-setups/0.9.11271', 'libxc/2.1.3', 'gpaw/1.2.0')

