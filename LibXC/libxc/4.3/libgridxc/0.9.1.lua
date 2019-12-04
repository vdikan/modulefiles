whatis("Name: LibGridXC")
whatis("Version: 0.9.1")
whatis("Description: A library to compute the exchange and correlation energy and potential in spherical (i.e. an atom) or periodic systems.")

local prefix = "/usr/local/apps-gcc-8.2/libgridxc/0.9.1"

prepend_path("LD_LIBRARY_PATH",  pathJoin(prefix, "lib"))

setenv("GRIDXC_ROOT",   prefix)
