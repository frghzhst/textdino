<#
$asciichars = @('█', '▓', '▒', '░', '#', '@', '$', '%', '&', '*', '.', ':', ';', ',', '"', ' ')
Write-Host $asciichars

while (-not [System.Console]::KeyAvailable) {
    # Perform any actions while waiting for key input
    Start-Sleep -Milliseconds 100  # Delay to avoid high CPU usage
}

$key = [System.Console]::ReadKey()
Write-Host "Key pressed: $($key.Key)"

$randomNumber = Get-Random -Minimum 0 -Maximum 10
#>
function screen {
    $asciichars = @('█', '▓', '▒', '░', '#', '@', '$', '%', '&', '*', '.', ':', ';', ',', '"', ' ')
    $width = [Console]::WindowWidth 
    $height = [Console]::WindowHeight
    $matrix = New-Object 'object[,]' $height, $width

    for ($row = 0; $row -lt $height; $row++) {
        for ($col = 0; $col -lt $width; $col++) {
            $matrix[$row, $col] = $asciichars[Get-Random -Minimum 0 -Maximum $asciichars.Count]
        }
    }

    while ($true) {
        $screenText = ''
        for ($row = 0; $row -lt $height; $row++) {
            for ($col = 0; $col -lt $width; $col++) {
                $screenText += $matrix[$row, $col]
            }
        }
        
        Clear-Host
        Write-Host $screenText -NoNewline
        
        Start-Sleep -Milliseconds 100  # Adjust the sleep time as needed
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
