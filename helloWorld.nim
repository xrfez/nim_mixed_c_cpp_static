import std/[compilesettings, strformat, strutils]

proc currentSourceDir(): string {.compileTime.} =
  ## Get the Source Directory at compile time
  result = currentSourcePath().replace("\\", "/")
  result = result[0 ..< result.rfind("/")]

# Get nimcache directory at compile time  
const nimcache = querySetting(SingleValueSetting.nimcacheDir)

# Get source Directory
const sourceDir {.used.} = querySetting(SingleValueSetting.projectFull)

# Compile cpp to .o files at compile time
const helloWorldConstant {.used.} = staticExec(fmt"g++ -c {currentSourceDir()}/helloWorld.cpp -o {nimcache}/helloWorld.cpp.o")

# Pass the .o file to the linker
{.passL: fmt"{nimcache}/helloWorld.cpp.o".}

# Pass some flags to eliminate cpp runtime dependencies
{.passL: "-static-libgcc -static-libstdc++".}

proc helloWorld*(): cint {.importc: "HelloWorld", nodecl, discardable.}
  ## Prints "Hello World! from cpp"

when isMainModule:
  echo "Hello World! from c"
  helloWorld()
