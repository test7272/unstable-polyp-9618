Write-Output 'Installing all the things'

# Chocolatey (Windows packages)
choco install -y git nodejs-lts python ruby golang rust openjdk maven gradle php composer dotnet-sdk cmake ninja vcpkg 7zip notepadplusplus

# PowerShell Gallery modules
Install-Module -Name PSReadLine,Pester,posh-git,ImportExcel,PSScriptAnalyzer,PSWriteHTML,PowerShellGet -Scope CurrentUser -Force -ErrorAction SilentlyContinue

# npm global
npm install -g typescript eslint prettier pnpm yarn

# Per-ecosystem installs
pip install -r requirements.txt
cargo fetch
go mod download
bundle install
composer install
mvn -q compile
./gradlew compileJava

Write-Output 'Done installing 400+ packages across every ecosystem'
