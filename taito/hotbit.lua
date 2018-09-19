-- Lua module file for Hotbit

help([[
        Hotbit, v0.1
]])

load("python-env/2.7.10", "ase/3.6.0")

local base = '/homeappl/home/louhivuo/appl_taito/hotbit'
local mklroot = os.getenv('MKLROOT')

setenv('HOTBIT_DIR', pathJoin(base, 'lib/python'))
setenv('HOTBIT_PARAMETERS', pathJoin(base, 'param'))
prepend_path('PATH', base)
append_path('PYTHONPATH', pathJoin(base, 'lib/python'))
append_path('LD_LIBRARY_PATH', pathJoin(mklroot, '../compiler/lib/intel64'))
-- append_path('LD_LIBRARY_PATH', '/appl/opt/cluster_studio_xe2016/compilers_and_libraries_2016.0.109/linux/compiler/lib/intel64')

