# Personal tests and templates

#### Powershell
- Search String in files in PWS: ```Get-ChildItem -Recurse -Exclude *.bmp,*.pdf | Select-String "todo" | Select Path, LineNumber, Line```<br>
  Options:
  - Get-ChildItem:  ```-Include *.* -Exclude *.pdf,*.dll``` *Filter*
  - Select-String:  ```-Context 1, 2``` *Also show surrounding lines (Only works without "| Select Path, etc")*
  - Select-String:  ```-List``` *Only show file once, even with multiple matches*
  - ``` | Out-File search_out.txt``` *divert output to file*
- ``` | clip.exe ``` pipe output into clipboard
- ``` pwd | Select-Object -ExpandProperty "Path" ``` get value of an objects property by name
- ``` gal -Definition Get-Process ``` get aliases for commandlet

#### Misc
- Image conversion: ```D:\ImageMagick-7.1.0-Q16-HDRI\convert.exe .\mandlebrot.ppm new.png```
- Get only+best audio from yt-url: ``` youtube-dl -x --audio-format mp3 ULR_HERE```

#### Python
- Pack as single exe: ```pyinstaller -F main.py```
- Requirements w/o virtualenv: ```pipreqs ./ --encoding=utf8 --force```
- Style- and error-check: ```flake8``` & ```pylint .\main.py```

#### Git
 - ```git remote -v``` See all sources
 - ```git rm -r --cached <folder>``` Remove folder that is are now ignored (remove '-r' for only files)
 - ```git log --graph --oneline -n 10``` condensed log
 - ```git mv .\Implementation\KnownFaces\bruno.bmp .\Implementation\KnownFaces\Bruno.bmp``` make git notice the switch to uppercase

#### Markdown-Tricks

- Code block with linting and copy-button
```Java
System.out.println("Hello World!");
```

<details>
<summary>Expanding List</summary>

- Here is a hidden Comment <!-- Comment -->
- Basic Stuff:
  * \*\*Bold\*\* → **Bold**
  * \*italic\* → *italic*
  * \~strikethrough\~ → ~strikethrough~
- [Can be a link](http://www.example.com)
  1. [x] Todo
  2. [ ] List

</details>
