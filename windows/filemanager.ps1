function Get-SimpleName($filePath){
    $fileSplit=$filePath.Split("\"); $fileSplit[$fileSplie.count-1]
}

function Get-FileNames($folderPath){
    Get-ChildItem -Path $folderPath -Recurse -Name | Where-Object {$_.Split("\").count -gt 0} | ForEach-Object -Process {Get-SimpleName($_)}
}

function  Get-FileDiff ($pathA, $pathB)
{
    $filesInB = Get-FileNames($pathB)   
    $filesInA = Get-FileNames($pathA)
    return $filesInA | Where-Object {!$filesInB.Contains($_)}
}

function Get-FileIntersect ($pathA, $pathB)
{
    $filesInB = Get-FileNames($pathB)   
    $filesInA = Get-FileNames($pathA)
    return $filesInA | Where-Object {$filesInB.Contains($_)}
}

function Get-FileReunion ($pathA, $pathB)
{
    $filesInB = Get-FileNames($pathB)   
    $filesInA = Get-FileNames($pathA)
    $filesInANotInB = Get-FileDiff($filesInA, $filesInB)
    $filesInAAndInB = Get-FileIntersect($filesInA, $filesInB)
    $filesInAOrInB = $filesInAAndInB + $filesInAAndInB
    return $filesInAOrInB
}