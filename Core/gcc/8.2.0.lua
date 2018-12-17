-- GCC-8.2.0
-- Setup Modulepath for packages built by this compiler
family("compiler")
local mroot = os.getenv("MODULEPATH_ROOT")
local mdir  = pathJoin(mroot,"Compiler/gcc", "8.2")
prepend_path("MODULEPATH", mdir)
-- Actual path setter.
-- Makes `gcc-8.2`, `gfortran-8.2`, `g++-8.2` etc visible on this machine.
-- Unlike binaries with major version only in the title, these were compiled
-- locally and not installed through package manager.
prepend_path("PATH", "/usr/local/gcc-8.2/bin")
-- Set enviroment variables for Makefile macro.
pushenv("FC", "/usr/local/gcc-8.2/bin/gfortran-8.2")
pushenv("CC", "/usr/local/gcc-8.2/bin/gcc-8.2")
pushenv("CXX", "/usr/local/gcc-8.2/bin/g++-8.2")
