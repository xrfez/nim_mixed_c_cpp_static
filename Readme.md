## Mixed C and C++ Project Structure

compile with `nim c -r helloWorld.nim`

At compile time generate .o files for the C++ dependencies with the c++ compiler and save to the nimcache directory  
Link to the o files in nim  
Use a switch the swap out the C Linker for the C++ Linker  
Compile nim using the c backend  

This examples assumes GCC is the compiler and windows.

I'm pretty sure this would not work if 2 differnect compilers are used for the C and C++ compilation.

