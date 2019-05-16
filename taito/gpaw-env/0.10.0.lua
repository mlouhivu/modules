-- -*- lua -*-

help(
[[	This module loads the gpaw environment version 0.10.0

	Note that this module removes all other modules during load
]])


purgeAndLoad('gcc/4.7.2', 'intelmpi/4.1.0', 'ase/3.8.1', 'openblas/0.2.6', 'python/2.7.3', 'mkl/11.0.2',
    'hdf5-serial/1.8.12', 'gpaw/0.10.0', 'gpaw-setups/0.9.11271')

