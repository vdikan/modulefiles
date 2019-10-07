whatis("Name: LibFdict")
whatis("Version: 0.7.2")
whatis("Description: Fdict fortran library.")

local prefix = "/usr/local/apps-gcc-8.2/fdict/0.7.2/"

setenv("FDICT_PATH", prefix)
setenv("FDICT_LIBS", pathJoin("-L" .. prefix, "lib -lfdict"))
setenv("FDICT_INC",  pathJoin("-I" .. prefix, "include"))
