# bootstrap.ps1
# Place this in $env:OneDrive\.dotfiles

# Map symlink locations (where the program expects the config) -> repo file
$symlinks = @{
    "$env:APPDATA\alacritty\alacritty.toml"        = "$env:OneDrive\.dotfiles\alacritty\alacritty.toml"
    "$env:APPDATA\Notepad++\config.xml"            = "$env:OneDrive\.dotfiles\notepad++\config.xml"
    "$env:localappdata\Programs\oh-my-posh\themes\night-hawk.omp.json" = "$env:USERPROFILE\.dotfiles\ohmyposh\night-hawk.omp.json"
    "$env:APPDATA\yazi\config\yazi.toml"      = "$env:USERPROFILE\.dotfiles\yazi\yazi.toml"
}

foreach ($linkPath in $symlinks.Keys) {
    $target = $symlinks[$linkPath]

    # Ensure parent folder exists
    $parent = Split-Path $linkPath
    if (!(Test-Path $parent)) {
        Write-Host "Creating folder: $parent"
        New-Item -ItemType Directory -Force -Path $parent
    }

    # Backup existing file if it exists
    if (Test-Path $linkPath) {
        Write-Host "Backing up existing file: $linkPath"
        Rename-Item $linkPath "$linkPath.bak"
    }

    # Create the symlink
    Write-Host "Creating symlink: $linkPath -> $target"
    New-Item -ItemType SymbolicLink -Path $linkPath -Target $target
}

