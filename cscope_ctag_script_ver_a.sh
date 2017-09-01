#!/bin/sh 

find . -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.cc" -o -name "*Makefile*" -o -name "*.mk" -o -name "*.hpp" -o -name "*.inl" -o -name "*.xml" -o -name "*.pl" -o -name "*.pm" -o -name "*.inc" -o -name "*.py" -o -name "*.sh" > cscope.files 

cscope -bkq -i cscope.files 

ctags -R --c++-kinds=+p --fields=+iaS --extra=+q 

