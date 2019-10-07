whatis("Name: NetCDF-C")
whatis("Version: 4.7.1")
whatis("Description: NetCDF-C standalone library.")

local prefix = "/usr/local/apps-gcc-8.2/netcdf_c/4.7.1/"

setenv("NCDIR", prefix)
prepend_path("LD_LIBRARY_PATH",  pathJoin(prefix, "lib"))
