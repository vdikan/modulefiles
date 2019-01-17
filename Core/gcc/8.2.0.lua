-- GCC-8.2.0
-- Setup Modulepath for packages built by this compiler
help([[
GCC compiler module file.
]])

local version = "8.2"

whatis("Name: GCC compiler")
whatis("Version: " .. version)
whatis("Keywords: System, Compiler")
whatis("URL: http://www.gnu.org/")
whatis("Description: GNU compiler family")

family("compiler")
-- Actual path setter.
-- Makes `gcc-8.2`, `gfortran-8.2`, `g++-8.2` etc visible on this machine.
-- Unlike binaries with major version only in the title, these were compiled
-- locally and not installed through package manager.
local prefix = "/usr/local/gcc-8.2/bin"

prepend_path("PATH", prefix)
-- Set enviroment variables for Makefile macro.
pushenv("FC",  pathJoin(prefix, "gfortran-8.2"))
pushenv("CC",  pathJoin(prefix, "gcc-8.2"))
pushenv("CXX", pathJoin(prefix, "g++-8.2"))

local mroot = os.getenv("MODULEPATH_ROOT")
local mdir  = pathJoin(mroot,"Compiler/gcc", "8.2")
prepend_path("MODULEPATH", mdir)
