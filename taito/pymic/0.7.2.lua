-- Lua module file for pyMIC 

help([[
        pyMIC -- offload Python to Intel Xeon Phis
]])

load("python/2.7.10-icc")
load("cython/0.23")

local base = '/homeappl/home/louhivuo/appl_taito/pymic'

prepend_path('PYTHONPATH', base)
prepend_path('PATH', pathJoin(base, 'bin'))

setenv('PYMIC_BASE', base)
setenv('MIC_ENV_PREFIX', 'PYMIC')
setenv('PYMIC_LD_LIBRARY_PATH', os.getenv('MIC_LD_LIBRARY_PATH'))

append_path('PYMIC_LIBRARY_PATH', pathJoin(base, 'examples/data_map'))
append_path('PYMIC_LIBRARY_PATH', pathJoin(base, 'examples/data_transfers'))
append_path('PYMIC_LIBRARY_PATH', pathJoin(base, 'examples/data_transfers_offset'))
append_path('PYMIC_LIBRARY_PATH', pathJoin(base, 'examples/dgemm'))
append_path('PYMIC_LIBRARY_PATH', pathJoin(base, 'examples/double_it'))
append_path('PYMIC_LIBRARY_PATH', pathJoin(base, 'examples/double_it_lowlevel'))
append_path('PYMIC_LIBRARY_PATH', pathJoin(base, 'examples/empty_kernel'))
append_path('PYMIC_LIBRARY_PATH', pathJoin(base, 'examples/simple'))
append_path('PYMIC_LIBRARY_PATH', pathJoin(base, 'examples/svd'))
append_path('PYMIC_LIBRARY_PATH', pathJoin(base, 'examples/zgemm'))

append_path('PYMIC_LIBRARY_PATH', pathJoin(base, 'benchmarks'))
append_path('PYMIC_LIBRARY_PATH', pathJoin(base, 'tests'))
append_path('MIC_LD_LIBRARY_PATH', pathJoin(base, 'lib/pymic'))
append_path('LD_LIBRARY_PATH', pathJoin(base, 'lib/pymic'))
append_path('PYTHONPATH', pathJoin(base, 'lib'))

