whatis("Name: LibXC")
whatis("Version: 3.0.1")
whatis("Description: A library of exchange-correlation functionals for density-functional theory.")

family("libxc")

local prefix = "/usr/local/apps-gcc-8.2/libxc/3.0.1"

prepend_path("LD_LIBRARY_PATH",  pathJoin(prefix, "lib"))

setenv("LIBXC_ROOT",   prefix)
