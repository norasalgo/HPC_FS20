all: cpi_omp cpi_mpi

cpi_omp: cpi_omp.c
	cc -O3 -o cpi_omp -fopenmp cpi_omp.c 

cpi_mpi: cpi_mpi.c
	cc -O3 -o cpi_mpi cpi_mpi.c 
clean:
	rm -f cpi_omp cpi_mpi
