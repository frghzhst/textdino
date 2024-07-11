<#$asciichars = @('█', '▓', '▒', '░', '#', '@', '$', '%', '&', '*', '.', ':', ';', ',', '"', ' ')

Write-Host $asciichars

while (-not [System.Console]::KeyAvailable) {
    # Perform any actions while waiting for key input
    Start-Sleep -Milliseconds 100  # Delay to avoid high CPU usage
}

$key = [System.Console]::ReadKey()
Write-Host "Key pressed: $($key.Key)"

$randomNumber = Get-Random -Minimum 0 -Maximum 10
#>
function screen() {
    $asciichars = @('█', '▓', '▒', '░', '#', '@', '$', '%', '&', '*', '.', ':', ';', ',', '"', ' ')
    $width = [Console]::WindowWidth
    $height = [Console]::WindowHeight
    
    $boxWidth = 10
    $boxHeight = 15
    $boxX = 20
    $boxY = 10
    
    $s = $asciichars[3]
    $sw = $s * $width
    $sh = ($height / 16) * 11
    $sky = $sw * ($sh - $boxHeight)  

    $g = $asciichars[1]
    $gw = $g * $width
    $gh = ($height / 16) * 5
    $ground = $gw * $gh

    $pw = $asciichars[0] * 8
    $ph = 10
    $p = $pw * $ph
    $spacing = $asciichars[3] * 20
    $nw = $width - (20 + 8)
    $nsw = $asciichars[3] * ($nw - $psprite.Length)
    $psp = ($spacing + $pw) + $nsw
    $psprite = $psp * 8
    Write-Host $sky$psprite$ground
}

screen
<#
$consoleKeyInfo = $null

while ($consoleKeyInfo.Key -ne 'Q') {
    $consoleKeyInfo = [System.Console]::ReadKey($true)
    
    # Check for the desired key
    if ($consoleKeyInfo.Key -eq 'A') {
        Write-Host "Key A was pressed."
        # Perform the desired action for the key press
    }
}
#>