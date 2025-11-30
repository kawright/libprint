/* Print functions */

#ifndef PRINT_H
#define PRINT_H

#include <core.h>

#include <stdarg.h>

/* Print a string to 'stdout', appending an ellipsis if it exceeds 'max' chars
in length. */
Void print_ellipsis(Ch *str, U64 max);

/* Print a formatted string to 'stderr'. */
Void print_err_fmt(Ch *str, ...);

/* Print a string and a new-line to 'stderr'. */
Void print_err_ln(Ch *str);

/* Print a formatted string to 'stdout'. */
Void print_fmt(Ch *str, ...);

/* Print af string and a new-line to 'stdout'. */
Void print_ln(Ch *str);


#endif
