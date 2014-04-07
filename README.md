MemProfile
==========

A profiler that profiles memory accesses and links dynamic accesses back to
static compilation information.

There is a list of cases I do not handle well in the profiling tool which I
need to fix later.
 - functions have the exact same names
 - static and const variables in the DWARF section

