-- This is the module file for Gromacs 

local pkgVersion = '5.1.2-mic'

help([[
         Xeon Phi (aka MIC) version of GROMACS molecular dynamics package 5.1.2
]])

prereq('intel/16.0.0', 'mkl/11.3.0', 'intelmpi/5.1.1')

local install_root='/appl/chem/gromacs/5.1.2-mic/'

local pkgName = 'gromacs'
-- local compiler_root = pathJoin(install_root, pkgName, pkgVersion)

prepend_path('PATH', pathJoin(install_root, 'bin'))

-- these will set the env vars set by GMXRC
-- setenv("NAME", value)
-- skipped setenv LD_LIBRARY_PATH $tmppath
-- skipped setenv PKG_CONFIG_PATH $tmppath

setenv("GMXBIN", pathJoin(install_root, 'bin'))
setenv("GMXLDLIB", pathJoin(install_root, 'lib64'))
setenv("GMXMAN", pathJoin(install_root, 'share/man'))
setenv("GMXDATA", pathJoin(install_root,  'share/gromacs'))
prepend_path("LD_LIBRARY_PATH", pathJoin(install_root,  'lib64'))
--  prepend_path("PKG_CONFIG_PATH",pathJoin(install_root, 'pkgName, lib/pkgconfig'))
prepend_path("MANPATH", pathJoin(install_root, 'share/man'))
setenv("DSSP","/appl/chem/dssp/bin/dssp")

if (mode() == "load") then

  LmodMessage("Gromacs version ", pkgVersion, " environment loaded")
  LmodMessage("This installation is *only* for Xeon Phi (aka MIC) nodes, i.e. Taito-mic.")
  LmodMessage("Special job scripts are needed: https://github.com/mlouhivu/gmx-mic-launcher")
  LmodMessage("")
  LmodMessage("== UNTESTED EXPERIMENTAL BUILD ... only for the thrill-seekers! ==")
  LmodMessage("")

end
