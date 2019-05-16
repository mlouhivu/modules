-- Lua module file for Python compiled for GPUs

help([[
        Python 2.7.13
          for cuda/10.0 and mkl/18.0.2 + intelmpi/5.1.3
          w/ libxc/2.1.3, ase/3.11.0, numpy/1.10.4, scipy/0.17.1
]])

load('cuda/10.0', 'cudnn/7.3-cuda10', 'gcc/5.3.0', 'intelmpi/5.1.3', 'mkl-dev/18.0.2')

local base = '/homeappl/home/louhivuo/appl_taito/python-2018-12-cuda-intel'
local bundle = '2016-06'

setenv('PYTHONHOME', base)
prepend_path('PYTHONPATH', pathJoin(base, 'lib'))
prepend_path('PATH', pathJoin(base, 'bin'))
prepend_path('PATH', pathJoin(base, pathJoin('bundle', pathJoin(bundle, 'bin'))))
prepend_path('LD_LIBRARY_PATH', pathJoin(base, 'lib'))
prepend_path('LD_LIBRARY_PATH', pathJoin(base, pathJoin('bundle', pathJoin(bundle, 'lib'))))
setenv('PYTHONUSERBASE', pathJoin(base, pathJoin('bundle', bundle)))
setenv('LIBXCDIR', pathJoin(base, pathJoin('bundle', bundle)))
