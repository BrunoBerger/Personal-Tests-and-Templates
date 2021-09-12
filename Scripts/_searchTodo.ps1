$term = "todo"

# tex only
$Matches = Get-ChildItem -Recurse -Include *.tex | Select-String -Pattern $term
$Matches | Select-Object Path, LineNumber, Line
$amount = $Matches.Matches.Count
"`n ==> Found $amount occourences of $term"

# (Get-ChildItem -Recurse -Include *.tex, *.md | Select-String -Pattern 'todo').Matches.Count
# Get-ChildItem -Recurse -Include *.tex, *.md | Select-String -Pattern 'todo' | select Path, LineNumber, Line


# all
# Clear-Content -Path searchTodoOut.txt
# Get-ChildItem -Recurse -Include *.tex, *.py, *md | Select-String -Pattern 'todo' | select Path, LineNumber, Line >> searchTodoOut.txt
