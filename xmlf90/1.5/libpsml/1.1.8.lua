whatis("Name: LibPSML")
whatis("Version: 1.1.8")
whatis("Description: A library for handling of PSML-pseudopotential files.")

local prefix = "/usr/local/apps-gcc-8.2/libpsml/1.1.8"

prepend_path("LD_LIBRARY_PATH",  pathJoin(prefix, "lib"))

setenv("PSML_ROOT",   prefix)
