-- GCC-7.4.0
-- Setup Modulepath for packages built by this compiler
help([[
GCC compiler module file.
]])

local version = "7.4"

whatis("Name: GCC compiler")
whatis("Version: " .. version)
whatis("Keywords: System, Compiler")
whatis("URL: http://www.gnu.org/")
whatis("Description: GNU compiler family")

family("compiler")
-- Actual path setter.
-- Makes `gcc-7.4`, `gfortran-7.4`, `g++-7.4` etc visible on this machine.
-- Unlike binaries with major version only in the title, these were compiled
-- locally and not installed through package manager.
local prefix = "/usr/local/gcc-7.4/bin"

prepend_path("PATH", prefix)
-- Set enviroment variables for Makefile macro.
pushenv("FC",  pathJoin(prefix, "gfortran-7.4"))
pushenv("CC",  pathJoin(prefix, "gcc-7.4"))
pushenv("CXX", pathJoin(prefix, "g++-7.4"))

local mroot = os.getenv("MODULEPATH_ROOT")
local mdir  = pathJoin(mroot,"Compiler/gcc", "7.4")
prepend_path("MODULEPATH", mdir)
