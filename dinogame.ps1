<#$asciichars = @('█', '▓', '▒', '░', '#', '@', '$', '%', '&', '*', '.', ':', ';', ',', '"', ' ')
Write-Host $asciichars
skib
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
    
    $s = $asciichars[3] #characters used to print the sky
    $sw = $s * $width #width of sky
    $sh = ($height / 16) * 11 #sky height 
    $sky = $sw * ($sh - $ph) #sky - the height of player

    $g = $asciichars[1] #character for ground
    $gw = $g * $width #ground width
    $gh = ($height / 16) * 5 #ground height
    $ground = $gw * $gh #ground 

    $pw = $asciichars[0] * 8 #player character
    $ph = 8 #player height
    $p = $pw * $ph #player box
    $spacing = $asciichars[3] * 20 #spacing before the player and the left edge of screen
    $nw = $width - (20 + 8) #new width
    $nsw = $asciichars[3] * $nw #new sky width string
    $psp = ($spacing + $pw) + $nsw #player sprite width 
    $psprite = $psp * $ph # player sprite height
    $consoleKeyInfo = $null

    while ($consoleKeyInfo.Key -ne 'Q') {
        $consoleKeyInfo = [System.Console]::ReadKey($true)
    
        # Check for the desired key
        if ($consoleKeyInfo.Key -eq 'Spacebar') {
            #jumps 9 characters high
            $spaceforstuff = ($asciichars[3] * $width) - $obstablew
        }
        Write-Host $sky$psprite$space$ground
    }
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
