#
# Makefile for GA program
#         

F90FLAGS = -O2 -Wall

# Compiler:
F90 = gfortran

F90FILES=\
      qsort_c.f90 \
      funct.f90 \
      ga.f90 



F90OBJS = ${F90FILES:.f90=.o}

##################################################################
# Targets for make.
##################################################################

ga: ${F90OBJS}
	@echo  "Linking" $@ "... "
	${F90} ${F90OBJS} -o ga 
clean:
	@rm  *.o *.mod ga

##################################################################
# Generic rules
##################################################################

.SUFFIXES : .f90 

.f90.o:
	${F90} ${F90FLAGS} -c  ${@:.o=.f90}

%.o: %.mod
