#include "print.h"

#include <core.h>

#include <stdarg.h>
#include <stdio.h>

Void print_err_fmt(Ch *str, ...) {
    va_list args;
    va_start(args, str);
    vfprintf(stderr, str, args);
    va_end(args);
}

Void print_err_ln(Ch *str) {
    fprintf(stderr, "%s\n", str);
}

Void print_fmt(Ch *str, ...) {
    va_list args;
    va_start(args, str);
    vprintf(str, args);
    va_end(args);
}

Void print_ln(Ch *str) {
    printf("%s\n", str);
}

