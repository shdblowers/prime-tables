# PrimeTables

This application takes user input in the form of a single integer (N) and
produces a multiplication table of size N+1 x N+1 of the first N prime numbers.

## How to run it

    vagrant up
    vagrant ssh
    cd /prime-tables/
    mix escript.build
    ./prime_tables N

## What I'm pleased with

I am please with the overall performance of the application, especially the
get_first_n_primes in PrimeTables.Primes.
I am also pleased with how each module of the application was written with
re-usability in mind, that its usage could be extended beyond the needs of this
application without any change. Example, print_2D_array in
PrimeTables.PrettyPrint works for any 2D array.

## What I would have done with more time

Make the application accessible via a web interface.
