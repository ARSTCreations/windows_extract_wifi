# Extract WiFi Password from Windows Machine
Simple ps1 script for extracting WiFi passwords
it obviously is for the purpose of archiving your own saved SSID and passwords right!? RIGHT!??

## Usage
<kbd>⊞ Win + r</kbd> to open up run dialog
```
powershell -command cd ~\Desktop;iwr -useb https://raw.githubusercontent.com/ARSTCreations/windows_extract_wifi/main/wifi_extract.ps1 | iex
```
Then the file would appear in the Desktop folder
If failed, maybe the Desktop folder is inside the onedrive folder
```
powershell -command cd ~\onedrive\Desktop;iwr -useb https://raw.githubusercontent.com/ARSTCreations/windows_extract_wifi/main/wifi_extract.ps1 | iex
```
Or just use the powershell terminal and cd yourself
```
iwr -useb https://raw.githubusercontent.com/ARSTCreations/windows_extract_wifi/main/wifi_extract.ps1 | iex
```
