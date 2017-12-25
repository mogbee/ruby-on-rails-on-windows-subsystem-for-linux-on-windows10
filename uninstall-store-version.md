# Ruby on Rails on Windows Subsystem for Linux on Windows10

This is method for uninstall Linux of Windows Store version.

## Getting Started

**Following commands delete your Linux data completely**
**If you don't want to delete, never run commands**

### Uninstalling

#### Step1

Open command prompt.

#### Step2 case Ubuntu

```
powershell
Get-AppxPackage -Name *Ubuntu*
```

Output 

#### Step2 ase openSUSE Leap or SUSE Linux

```
powershell
Get-AppxPackage -Name *SUSE*
```

#### Step3

**If linux installed with the Step2 command is displayed**, delete it with the following command.

```
powershell
{Step2 command} | Remove-AppxPackage
```
