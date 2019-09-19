# Running/Building Sketches From Your CLI (Command Line Interface)

## macOS
1. Open `.bash_aliases` in your favorite editor.
2. Add the following function to the file.

```bash
processing () {
   if [ $# -eq 1 ]; then
      /usr/local/bin/processing-java --sketch=$(pwd)/"$1" --run
   else
      echo 'The Processing command has failed. Check the syntax of your command and try again.'
   fi
}
```

3. Save it, then quite The Terminal
4. To use it, run `processing PATH-TO-SKETCH FOLDER`

## Windows (pending)