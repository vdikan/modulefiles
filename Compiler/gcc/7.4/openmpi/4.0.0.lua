-- Setup Modulepath for packages built by this MPI stack

family("mpi")

local mroot = os.getenv("MODULEPATH_ROOT")
local mdir = pathJoin(mroot,"MPI/gcc", "7.4","openmpi","4.0")
prepend_path("MODULEPATH", mdir)

local prefix = "/usr/local/apps-gcc-7.4/openmpi/4.0.0"

prepend_path("PATH", pathJoin(prefix, "bin"))
prepend_path("LD_LIBRARY_PATH",  pathJoin(prefix, "lib"))
