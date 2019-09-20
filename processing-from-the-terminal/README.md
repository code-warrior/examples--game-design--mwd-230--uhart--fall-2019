# Running/Building Sketches From Your CLI (Command Line Interface)

## macOS
1. Open `.bash_aliases` in your favorite editor.
2. Add the following function to the file.

```bash
processing () {
   if [ $# -eq 1 ]; then
      /usr/local/bin/processing-java --sketch=$(pwd)/"$1" --run
   else
      echo 'Only the Processing command was found on the command line. The path to the sketch much also be included.'
   fi
}
```

3. Save it, then quite The Terminal
4. To use it, run `processing PATH-TO-SKETCH-FOLDER`

## Windows (Cygwin)

```bash
processing () {
   if [ $# -eq 1 ]; then
      /cygdrive/c/Program\ Files/processing-3.5.3/processing-java.exe --sketch=$(cygpath -aw .)/"$1" --run
   else
      echo 'Only the Processing command was found on the command line. The path to the sketch much also be included.'
   fi
}
```
