@echo off
echo Install VScode extensions
timeout /t 3
echo 1. Install
echo 2. Download VScode
echo 3. Import settings
echo 4. Exit
set /p UserInput=Select option: 
if %UserInput%==1 code --install-extension aaron-bond.better-comments && code --install-extension donjayamanne.githistory && code --install-extension EliverLara.andromeda && code --install-extension mcagampan.dark-horizon && code --install-extension ms-python.isort && code --install-extension ms-python.python && code --install-extension ms-python.vscode-pylance && code --install-extension ritwickdey.LiveServer && code --install-extension streetsidesoftware.code-spell-checker && code --install-extension vscode-icons-team.vscode-icons
if %UserInput%==2 start "browser" "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
if %UserInput%==3 echo WARNING this will override all current settings && set /p Warn=Continue?[y/n]:
if %Warn%==y cd %USERPROFILE%\AppData\Roaming\Code\User && curl -o settings.json https://raw.githubusercontent.com/jojihatzz/vscode-config/main/settings.json
@pause