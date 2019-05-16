-- Lua module file for Python compiled for GPUs

help([[
        Python 2.7.13
          for cuda-env/8 and openblas/0.2.14-openmp
          w/ libxc/2.1.3, ase/3.11.0, numpy/1.10.4, scipy/0.17.1
]])

--load('cuda-env/8', 'openblas/0.2.14-openmp')
load('cuda-env/8', 'openblas/0.2.14')

local base = '/homeappl/home/louhivuo/appl_taito/python-2018-11-cuda'
local bundle = '2016-06'

setenv('PYTHONHOME', base)
prepend_path('PYTHONPATH', pathJoin(base, 'lib'))
prepend_path('PATH', pathJoin(base, 'bin'))
prepend_path('PATH', pathJoin(base, pathJoin('bundle', pathJoin(bundle, 'bin'))))
prepend_path('LD_LIBRARY_PATH', pathJoin(base, 'lib'))
prepend_path('LD_LIBRARY_PATH', pathJoin(base, pathJoin('bundle', pathJoin(bundle, 'lib'))))
setenv('PYTHONUSERBASE', pathJoin(base, pathJoin('bundle', bundle)))
setenv('LIBXCDIR', pathJoin(base, pathJoin('bundle', bundle)))
