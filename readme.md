# My Different Shell configs and themes
___

Just a centralized place for my terminal/shell/IDE configs and how to get them up and running.

- Windows
    - Powershell
    - Terminall
    - VsCode
- Mac
    - iterm2
    - VsCode
- Linux
    - iterm2

## Powershell

This requires [Powershell Gallery](https://www.powershellgallery.com/packages/oh-my-posh/2.0.465)

You might have to trust PSGallery. Otherwise, make sure you run everything as an administrator.
```Powershell
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
```

To configure powershell and the terminal we will use posh-git and oh-my-posh for the theme. Its concept is similar to oh-my-zsh if you use iterm2.

Modules required
- [posh-git]()
    - `Install-Module post-git -Scope CurrentUser`
- [oh-my-posh]()
    - `Install-Module oh-my-posh -Scope CurrentUser`

Drop `underwear.psm1`in    

    - Windows
        - C:\Users\markp\Documents\WindowsPowershell\Modules\oh-my-posh\2.0.465\Themes\
    - Mac
        - /Users/mpierce/.local/share/powershell/Modules/oh-my-posh/2.0.465/Them
### Using Oh-my-posh
- [Repo](https://github.com/JanDeDobbeleer/oh-my-posh?WT.mc_id=-blog-scottha)

Enable Prompt
```Powershell
Set-Prompt
```

Set a Theme
```powershell
Set-Theme underwear
```

### To Enable on Powershell start

Add the following to your profile
```Powershell
if (!(Test-Path -Path $PROFILE )) { New-Item -Type File -Path $PROFILE -Force }
notepad $PROFILE
```
Add to the profile that opens
```
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme underwear
```

## Terminal
___
- Download Windows Terminal [From the store](https://www.microsoft.com/en-us/p/windows-terminal-preview/9n0dx20hk701?WT.mc_id=-blog-scottha&activetab=pivot:overviewtab)
- Install it

## VsCode
I will write an installer at some point. For now this is an an easy copy/paste list of extensions I use.

- Powershell by Microsoft
- Python by Microsoft
- Beautify
- Better Comments
- TODO List
- GitLens
- Shades of Purple 
- vscode-icons
- C# (For work)

## Mac 
Everything is iterm2 with [shades-of-purple]() as the zsh theme

Section needs some love and brew.

## Linux
Iterm2 with oh-my-zsh.

Sectionn needs some love.

### Fonts
I use Cascadia Code in as many places as I can since I like the style of font and its suggested a lot by Microsoft for Microsoft products.

### Fun Themes
___

- [DraculaTheme](https://draculatheme.com/)
- [Nerd Fonts](https://www.nerdfonts.com/)

### Install Colors

```Powershell
Install-Module -Name PSWriteColor
```