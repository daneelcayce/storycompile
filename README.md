## storycompile.sh ##
## README ##

This shell script takes a list of text files and copies their contents into a new file. It was created by Daniel Alexander (xandernaut) during NaNoWriMo 2017, for the purpose of easily counting total words over several text files.

It was inspired by Scrivener's manuscript-compilation feature, and by [Thomas Gideon's "flashbake" script](https://github.com/commandline/flashbake).


### Usage ###
Basic usage:

  ./storycompile.sh /path/to/project/

storycompile requires a file called .storycompile to reside in the project directory, containing the relative paths of the files to be compiled. As an example, the file could look like this:

```
  README.md
  chapter1/scene1.txt
  chapter1/scene2.txt
  chapter2/scene1.txt
```

It exports all files listed in .storycompile to a single file (called "compiled.txt" by default), separating each file with a divider (currently two hashes).

Line 28 specifies the divider between the files; you can change to whatever you'd like.

### Installation ###
storycompile doesn't require special installation instructions, but it can be linked to a local applications directory to be run anywhere. On my machine, this link is "~/applications/storycompile".

### To-Do ###
  * customizable output filename
  * compile to different formats in addition to plain text using Pandoc
    * Targets: Markdown, ODT, ePub
  * [Stretch goal] Make portable for use on different operating systems
    * considering Python for this
  * [Stretch goal] Build Atom package
