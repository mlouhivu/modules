-- Lua module file for Python compiled for GPUs

help([[
        Python 2.7.13
          for cuda-env/9 and mkl/17.0.1
          w/ libxc/2.1.3, ase/3.11.0, numpy/1.10.4, scipy/0.17.1
]])

-- purgeAndLoad('cuda-env/9', 'mkl/17.0.1', 'boost/1.66')
load('cuda-env/9', 'mkl/17.0.1')

local base = '/homeappl/home/louhivuo/appl_taito/python-2018-09-cuda'
local bundle = '2016-06-no-boost'

setenv('PYTHONHOME', base)
prepend_path('PYTHONPATH', pathJoin(base, 'lib'))
prepend_path('PATH', pathJoin(base, 'bin'))
prepend_path('PATH', pathJoin(base, pathJoin('bundle', pathJoin(bundle, 'bin'))))
prepend_path('LD_LIBRARY_PATH', pathJoin(base, 'lib'))
prepend_path('LD_LIBRARY_PATH', pathJoin(base, pathJoin('bundle', pathJoin(bundle, 'lib'))))
setenv('PYTHONUSERBASE', pathJoin(base, pathJoin('bundle', bundle)))
setenv('LIBXCDIR', pathJoin(base, pathJoin('bundle', bundle)))
