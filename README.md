# Personal tests and templates

#### Misc:
- Search String in files in PWS: ```Get-ChildItem -Recurse -Exclude *.bmp,*.pdf | Select-String "todo" | Select Path, LineNumber, Line```
  ##### Options:
  - Get-ChildItem:  ```Include *.* -Exclude *.pdf,*.dll``` *Filter*
  - Select-String:  ```-Context 1, 2``` *Also show surrounding lines*
  - Select-String:  ```-List``` *Only show file once, even with multiple matches*
  - ``` | Out-File search_out.txt``` *divert output to file*
- Image conversion: ```D:\ImageMagick-7.1.0-Q16-HDRI\convert.exe .\mandlebrot.ppm new.png```

#### Python:
- Pack as single exe: ```pyinstaller -F main.py```
- Requirements w/o virtualenv: ```pipreqs ./ --encoding=utf8 --force```
- Style- and error-check: ```flake8``` & ```pylint .\main.py```

#### Markdown-Tricks:

- Code block with linting
```Java
System.out.println("Hello World!");
```
- Codeblock with added copy button
```Python Console
print("Hello World")
```

<details>
<summary>Expanding List</summary>

- [About](#about)
- [Usage](#usage)
  * [API](#api)
- [Transforms](#transforms)
  1. [CODE](#code)
  2. [REMOTE](#remote)

</details>
