-- -*- lua -*-
-- This is lua module file for gcc compiler
help([[
	GCC compilers, version 5.3.0
]])

-- Here are some local variables for paths and version numbering
local pkgVersion = '5.3.0'
local pkgName = 'gcc'
local pkgNameVer = pathJoin(pkgName, pkgVersion)

local compiler_root = pathJoin('/appl/opt/gcc', pkgVersion)
local compiler_rlibs = pathJoin(compiler_root, 'lib/gcc/x86_64-unknown-linux-gnu', pkgVersion)
local install_root = '/appl/opt'

-- System binutils does not have haswell support
-- prereq('binutils')

-- This tells the module system that this module is a compiler

prepend_path('INFOPATH', pathJoin(compiler_root, 'share', 'info'))
prepend_path('LD_LIBRARY_PATH', pathJoin(install_root, 'mpc/1.0.3/lib'))
prepend_path('LD_LIBRARY_PATH', pathJoin(install_root, 'mpfr/3.1.4/lib'))
prepend_path('LD_LIBRARY_PATH', pathJoin(install_root, 'gmp/6.0.0a/lib'))
prepend_path('LD_LIBRARY_PATH', pathJoin(install_root, 'isl/0.14/lib'))
prepend_path('LD_LIBRARY_PATH', compiler_rlibs)
prepend_path('LD_LIBRARY_PATH', pathJoin(compiler_root, 'lib64')) 
prepend_path('LD_LIBRARY_PATH', '/appl/opt/binutils/2.25/lib/')

prepend_path('MANPATH', pathJoin(compiler_root, 'share', 'man'))

prepend_path('PATH', '/appl/opt/binutils/2.25/bin')
prepend_path('PATH', pathJoin(compiler_root, 'bin'))

-- This part adds the new directory to the modulepath
-- Add compiler dependent module files to this directory!

