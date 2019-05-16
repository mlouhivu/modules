-- -*- lua -*- 
help([[
        This loads the MKL library environment.
        Version 2018.2.
        Modifies: LD_LIBRARY_PATH, LIBRARY_PATH, MANPATH, NLSPATH, CPATH, MIC_LIBRARY_PATH, MIC_LD_LIBRARY_PATH
]])

-- Here are some local variables for paths and version numbering
local pkgVersion = '18.0.2'
local pkgName = 'mkl'
local pkgNameVer = pathJoin(pkgName,pkgVersion)

local mkl_root = '/appl/opt/mkl/2018.2/mkl'

-- This tells the module system that this module is a compiler
-- family('compiler')

prepend_path('MKLROOT', pathJoin(mkl_root))
-- prepend_path('MANPATH', pathJoin(mkl_root,'man/en_US'))
prepend_path('NLSPATH', pathJoin(mkl_root,'lib/intel64/locale/%l_%t/%N'))
prepend_path('LD_LIBRARY_PATH', pathJoin(mkl_root,'lib/intel64_lin'))
prepend_path('LD_LIBRARY_PATH', pathJoin(mkl_root,'../tbb/lib/intel64_lin/gcc4.7'))
prepend_path('LIBRARY_PATH', pathJoin(mkl_root,'lib/intel64_lin'))
prepend_path('LIBRARY_PATH', pathJoin(mkl_root,'../tbb/lib/intel64_lin/gcc4.7'))
prepend_path('CPATH', pathJoin(mkl_root,'include'))
prepend_path('CPATH', pathJoin(mkl_root,'../tbb/include'))
-- prepend_path('FPATH', pathJoin(mkl_root,'mkl/include'))
-- prepend_path('INCLUDE', pathJoin(mkl_root,'mkl/include'))
-- F95ROOT variable into compiler dependant fortran 95 libraries (not needed for Intel compiler)
prepend_path('F95ROOT', pathJoin(mkl_root,'mkl_gnu_interface'))
prepend_path('TBBROOT','/homeappl/appl_taito/opt/mkl/2018.2/compilers_and_libraries_2018.2.199/linux/tbb')
-- This part adds the new directory to the modulepath
-- Add compiler dependent module files to this directory!
-- local modulepath_root = os.getenv("MODULEPATH_ROOT")
-- prepend_path('MODULEPATH', pathJoin(modulepath_root,"Compiler",pkgNameVer))
