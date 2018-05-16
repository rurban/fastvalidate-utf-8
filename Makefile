
all: unit benchmark

test:unit
	./unit

unit: tests/unit.c include/simdutf8check.h
	cc -O3 -march=native -o unit tests/unit.c -Iinclude

benchmark: benchmarks/benchmark.c include/simdutf8check.h
	cc -O3 -march=native -o benchmark benchmarks/benchmark.c -Iinclude -Ibenchmarks

clean:
	rm -r -f benchmark unit
