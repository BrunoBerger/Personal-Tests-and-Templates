# Personal tests and templates

#### Misc:
- Search String in files in PWS: ```Get-ChildItem -Recurse -Exclude *.bmp,*.pdf | Select-String "todo" -List | Select Path, LineNumber, Line```
- Image conversion: ```D:\ImageMagick-7.1.0-Q16-HDRI\convert.exe .\mandlebrot.ppm new.png```

#### Python:
- Pack as single exe: ```pyinstaller -F main.py```
- Requirements w/o virtualenv: ```pipreqs ./ --encoding=utf8 --force```
- Style- and error-check: ```flake8``` & ```pylint .\main.py```

#### Markdown-Tricks:

<details>
<summary>Expanding List</summary>

- [About](#about)
- [Usage](#usage)
  * [API](#api)
- [Transforms](#transforms)
  1. [CODE](#code)
  2. [REMOTE](#remote)

</details>
