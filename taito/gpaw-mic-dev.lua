-- This is the lua module file for GPAW

help([[
        GPAW with MIC support, experimental
]])

local base = '/homeappl/home/louhivuo/appl_taito/gpaw-mic-dev'
local libs = 'lib'

prepend_path('PYMIC_LIBRARY_PATH', pathJoin(base, libs, 'gpaw/mic'))
prepend_path('PYTHONPATH', pathJoin(base, libs))
prepend_path('PATH', pathJoin(base, 'bin'))

