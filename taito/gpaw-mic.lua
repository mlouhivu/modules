-- This is the lua module file for GPAW

help([[
        GPAW with MIC support, experimental
]])

local base = '/homeappl/home/louhivuo/appl_taito/gpaw-mic'
local libs = 'lib/python2.7/site-packages/'

prepend_path('PYMIC_LIBRARY_PATH', pathJoin(base, libs, 'gpaw/mic'))
prepend_path('PYTHONPATH', pathJoin(base, libs))
prepend_path('PATH', pathJoin(base, 'bin'))

