whatis("Name: OpenBLAS")
whatis("Version: 0.3.5")
whatis("Description: BLAS and LAPACK bundled with OpenBLAS")

local prefix = "/usr/local/apps-gcc-7.4/openblas/0.3.5"

setenv("BLAS_LIBS",   pathJoin("-L" .. prefix, "lib -lopenblasp"))
setenv("LAPACK_LIBS", pathJoin("-L" .. prefix, "lib -lopenblasp"))
