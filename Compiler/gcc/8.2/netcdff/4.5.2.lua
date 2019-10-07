whatis("Name: NetCDF-Fortran")
whatis("Version: 4.5.2")
whatis("Description: Fortran NetCDF standalone library.")

local prefix = "/usr/local/apps-gcc-8.2/netcdff/4.5.2/"

setenv("NFDIR", prefix)
prepend_path("LD_LIBRARY_PATH",  pathJoin(prefix, "lib"))
