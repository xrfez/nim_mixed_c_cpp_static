## Mixed C and C++ Project Structure

compile with `nim c -r helloWorld.nim`

At compile time generate .o files for the C++ dependencies with the c++ compiler and save to the nimcache directory  
Link to the o files in nim  
Use a switch the swap out the c linker for C++  
Compile nim using the c backend  

The examples here assume GCC is the compiler.

Im pretty sure if this would not work if 2 differnect compilers are used for the C and C++ compilation.

