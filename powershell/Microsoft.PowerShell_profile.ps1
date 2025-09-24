Function oneBack {Set-Location -Path ..}
Function twoBack {Set-Location -Path ../..}

Set-Alias l Get-ChildItem
Set-Alias c clear
Set-Alias which where.exe
Set-Alias -Name .. -Value oneBack
Set-Alias -Name ... -Value twoBack
Set-Alias t tree

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete 
