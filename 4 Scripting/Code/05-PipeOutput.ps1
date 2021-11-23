Set-Location "/Users/au299473/Workspace/hack-your-cs-education/code/scripting/"
New-Item "./out" -ItemType Directory -Force

# Declare 'variables'
$fizzbuzz = (3,5), (5,7), (7,9), (11,13), (13, 15)
$start = 0
$end = 1000

# Generate output
foreach($t in $fizzbuzz) {
  $fizz = $t.Get(0)
  $buzz = $t.Get(1)
  Start-Process `
    -FilePath "./FizzBuzz_osx-x64" `
    -ArgumentList $start, $end, $fizz, $buzz `
    -RedirectStandardOutput "./out/$fizz-$buzz.out"
}