# Description: A PowerShell script to install Neovim and configure it.

# Check if Winget is installed
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
	Write-Host "Winget is not installed. Please install Winget."
	exit 1
}

# Check if the script is running with administrator privileges
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
	Write-Host "This script requires running as an administrator."
	exit 1
}

# Install Neovim
Write-Host "Installing Neovim..."
winget install Neovim.Neovim

# Check if Neovim has been installed successfully
if ($?) {
	Write-Host "Neovim has been installed successfully."
} else {
	Write-Host "An error occurred while installing Neovim."
}

# Clone the Neovim configuration repository
$repoUrl = "https://github.com/ms0216/neovim-setup.git"
$configDir = "$env:LOCALAPPDATA\nvim"
git clone --recurse-submodules "$repoUrl" "neovim-setup"

# Create a symbolic link to the Neovim configuration files
New-Item -ItemType SymbolicLink -Path "$configDir" -Target "$(Get-Location)\neovim-setup\config"

Write-Output "Neovim configuration files have been linked."
