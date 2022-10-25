FC = gfortran

all: matmultf

matmultf: main.o matmult.o
	$(FC) -o $@ $^ 
##gfortran -o $@=autoname $^=thosefiles +compile $(LDFLAGS) options

matmult.o: matmult.f90
	$(FC) -c  $<
##gfortran -c #optimisation $(FCFLAGS) matmult.f90

main.o: main.f90
	$(FC) -c $<

clean: 
	rm *.o *.mod

