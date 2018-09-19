-- Lua module file for libXC

help([[
        libXC 2.1.2
]])

local base = '/homeappl/home/louhivuo/appl_taito/libxc-2.1.2'

setenv('LIBXCDIR', base)
append_path('LD_LIBRARY_PATH', pathJoin(base, 'lib'))

--append_path('LIBRARY_PATH', pathJoin(base, 'lib'))
--append_path('C_INCLUDE_PATH', pathJoin(base, 'include'))
