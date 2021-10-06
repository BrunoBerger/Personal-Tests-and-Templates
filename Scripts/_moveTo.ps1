# Replace with often used dirs and place script in ~
$paths = @(
  "./",
  "../"
)

# For even quicker navigation without input, if only one path
if ($paths.Count -eq 1)
{
  cd $paths[0]
  exit
}

$i=1
foreach ($path in $paths)
{
  "$i => $path"
  $i = $i+1
}
$selection = (Read-Host "Selection")-1
cd $paths[$selection]
