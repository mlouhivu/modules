-- This is the lua module file for GPAW setups

local pkgVersion = '0.8.7929'
local install_root = '/appl/nano/gpaw/setups'

help([[
        This loads the GPAW setups.
        Version ]] .. pkgVersion .. [[

        Modifies: GPAW_SETUP_PATH
]])

setenv('GPAW_SETUP_PATH', pathJoin(install_root, pkgVersion))

