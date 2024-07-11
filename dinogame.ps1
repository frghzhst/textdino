#$asciichars = @('█', '▓', '▒', '░', '#', '@', '$', '%', '&', '*', '.', ':', ';', ',', '"', ' ')

Write-Host $asciichars
<#
while (-not [System.Console]::KeyAvailable) {
    # Perform any actions while waiting for key input
    Start-Sleep -Milliseconds 100  # Delay to avoid high CPU usage
}

$key = [System.Console]::ReadKey()
Write-Host "Key pressed: $($key.Key)"
#>
$randomNumber = Get-Random -Minimum 0 -Maximum 10
function screen() {
    $asciichars = @('█', '▓', '▒', '░', '#', '@', '$', '%', '&', '*', '.', ':', ';', ',', '"', ' ')
    $width = [Console]::WindowWidth
    $height = [Console]::WindowHeight
    $s = $asciichars[3]
    $sw = $s * $width
    $sky = $sw * (($height / 8) * 5)
    Write-Host $sky

}

screen