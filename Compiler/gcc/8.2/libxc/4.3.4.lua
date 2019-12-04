whatis("Name: LibXC")
whatis("Version: 4.3.4")
whatis("Description: A library of exchange-correlation functionals for density-functional theory.")

family("libxc")

local mroot = os.getenv("MODULEPATH_ROOT")
local mdir = pathJoin(mroot, "LibXC/libxc", "4.3")
prepend_path("MODULEPATH", mdir)

local prefix = "/usr/local/apps-gcc-8.2/libxc/4.3.4"

prepend_path("LD_LIBRARY_PATH",  pathJoin(prefix, "lib"))

setenv("LIBXC_ROOT",   prefix)
