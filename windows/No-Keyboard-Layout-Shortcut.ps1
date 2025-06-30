# Disable Ctrl+Shift for keyboard layout switching

# Get the list of current input profiles
$InputProfiles = Get-WinUserLanguageList

foreach ($Profile in $InputProfiles) {
    # Check if the profile has the 'HotKey' property, which indicates layout switching settings
    if ($Profile.Hotkey -ne $null) {
        # Set the Hotkey to an empty string to disable the shortcut
        $Profile.HotKey = ""
        Set-WinUserLanguageList $InputProfiles
        Write-Host "Ctrl+Shift shortcut for keyboard layout switching has been disabled for $($Profile.LanguageTag)."
    } else {
        Write-Host "No specific Hotkey setting found for $($Profile.LanguageTag)."
    }
}

Write-Host "Please note that you might need to restart your computer for these changes to take full effect."