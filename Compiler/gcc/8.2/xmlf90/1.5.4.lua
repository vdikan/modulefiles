whatis("Name: xmlf90")
whatis("Version: 1.5.4")
whatis("Description: A suite of libraries to handle XML in Fortran.")

local mroot = os.getenv("MODULEPATH_ROOT")
local mdir = pathJoin(mroot, "xmlf90", "1.5")
prepend_path("MODULEPATH", mdir)

local prefix = "/usr/local/apps-gcc-8.2/xmlf90/1.5.4"

prepend_path("LD_LIBRARY_PATH",  pathJoin(prefix, "lib"))

setenv("XMLF90_ROOT",   prefix)
setenv("XMLF90_LIBS",   pathJoin("-L" .. prefix, "lib -lxmlf90"))
setenv("XMLF90_INCFLAGS",   pathJoin("-I" .. prefix, "include"))
