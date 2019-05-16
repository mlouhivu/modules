-- -*- lua -*-

help(
[[	This module loads the gpaw environment version 0.9.0

	Note that this module removes all other modules during load
]])


purgeAndLoad('gcc/4.7.2', 'intelmpi/4.1.0', 'ase/3.6.0', 'openblas/0.2.6', 'python/2.7.3',
    'hdf5-par/1.8.10', 'gpaw/0.9.0', 'gpaw-setups/0.8')

