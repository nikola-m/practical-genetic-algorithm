# practical-genetic-algorithm

This is a "ordinary" Fortran rewrite of the HPF code from Appendix III of Haupt&Haupt "Practical Genetic Algorithms" book.

Program searches for the minimum of the given function.

The HPF sorting functions are changed with quicksort algorithm that returns sorted array but also the sorted array of indexes from the original array.  

One can change the parameters, and more importantly the cost functions. All the functions from Appendix I of the book are tested. New cost functions are defined in 'funct' module.

Have fun!
