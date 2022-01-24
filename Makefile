GIT_VERSION := $(shell git describe --abbrev=4 --dirty --always --tags)


version:
    @echo "subroutine version" > version.f90
    @echo     " print*,  ' git version   : $(GIT_VERSION)'"      >> version.f90
    @echo "end subroutine" >> version.f90
