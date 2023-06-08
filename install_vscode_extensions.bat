@echo off
echo Install VScode extensions
timeout /t 3
echo 1. Install extensions
echo 2. Download VScode
echo 3. Import settings
echo 4. Open github page
echo 5. Show installed VScode extensions
echo 6. Exit
set /p UserInput=Select option: 
if %UserInput%==1 code --install-extension mads-hartmann.bash-ide-vscode && code --install-extension mcagampan.dark-horizon && code --install-extension ms-azuretools.vscode-docker && code --install-extension ms-python.python && code --install-extension ms-python.vscode-pylance && code --install-extension ms-vscode-remote.remote-containers && code --install-extension ms-vscode-remote.remote-wsl && code --install-extension ms-vsliveshare.vsliveshare && code --install-extension PKief.material-icon-theme && code --install-extension ritwickdey.LiveServer
if %UserInput%==2 start "browser" "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
if %UserInput%==4 start "browser" "https://github.com/jojihatzz/vscode-config"
if %UserInput%==5 cls && code --list-extensions && pause
if %UserInput%==3 echo WARNING this will override all current settings && set /p Warn=Continue?[y/n]:
if %Warn%==y cd %USERPROFILE%\AppData\Roaming\Code\User && curl -o settings.json https://raw.githubusercontent.com/jojihatzz/vscode-config/main/settings.json
@pause
