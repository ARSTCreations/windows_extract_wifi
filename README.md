# Extract WiFi Password from Windows Machine
Simple ps1 script for extracting WiFi passwords
it obviously is for the purpose od archiving your own saved SSID and passwords right!? RIGHT!??

## Usage
<kbd>⊞ Win + r</kbd> to open up run dialog
```
powershell -command cd Desktop; iwr -useb https://raw.githubusercontent.com/ARSTCreations/windows_extract_wifi/main/wifi_extract.ps1 | iex
```
