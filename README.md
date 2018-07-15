Bash scripts to reduce the redistributable [Java SE](http://www.oracle.com/technetwork/java/javase/overview/index.html) JRE provided by Oracle to a minimum.

Extract the *tar.gz* JRE archive to a directory, then e.g. for MacOS run

```bash
$ ./jre-reduce.sh macosx-x64 [directory]
```

Current version is [Java 8 Update 172](http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html). It might also work with newer updates.

This version information is also recorded in the file `version.inc`, which can be sourced from other scripts.

Only 64bit JRE versions are covered at this moment.

The exact terms by Oracle can be [found here](http://www.oracle.com/technetwork/java/javase/jre-8-readme-2095710.html).

It seems that some items mentioned are missing or have been renamed, see `#?` markers in the profiles. To avoid any violation no guesswork was applied.

Please notice that reduced JREs can break things. You might need to adjust the profiles for your specific requirements.
