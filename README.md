# Personal tests and templates

#### Misc:
- Search String in files in PWS: ```Get-ChildItem -Recurse -Exclude *.bmp,*.pdf | Select-String "todo" | Select Path, LineNumber, Line```<br>
  Options:
  - Get-ChildItem:  ```-Include *.* -Exclude *.pdf,*.dll``` *Filter*
  - Select-String:  ```-Context 1, 2``` *Also show surrounding lines*
  - Select-String:  ```-List``` *Only show file once, even with multiple matches*
  - ``` | Out-File search_out.txt``` *divert output to file*
- Image conversion: ```D:\ImageMagick-7.1.0-Q16-HDRI\convert.exe .\mandlebrot.ppm new.png```

#### Python:
- Pack as single exe: ```pyinstaller -F main.py```
- Requirements w/o virtualenv: ```pipreqs ./ --encoding=utf8 --force```
- Style- and error-check: ```flake8``` & ```pylint .\main.py```

#### Git:
 - ```git remote -v``` See all sources
 - ```git TODO``` Remove files that are now ignored
 - ```git mv .\Implementation\KnownFaces\bruno.bmp .\Implementation\KnownFaces\Bruno.bmp``` make git notice the switch to uppercase

#### Markdown-Tricks:

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
