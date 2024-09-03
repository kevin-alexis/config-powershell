oh-my-posh init pwsh --config 'C:\Users\kevin\Documents\PowerShell\config.omp.json' | Invoke-Expression
Import-Module posh-git
Import-Module -Name Terminal-Icons
set-PSReadLineOption -PredictionViewStyle ListView
Set-Alias ls lsd
function ll { lsd -l $args }
function la { lsd -a $args }
function lla { lsd -la $args }
function lt { lsd --tree $args }
function rm { Remove-Item -Recurse $args } # Create new rm command

function Touch-File() {
    $fileName = $args[0]
    # Comprobar si el archivo existe
    if (-not(Test-Path $fileName)) {
        # Si no existe, crealo
        New-Item -ItemType File -Name $fileName
    }
    else {
        #Si existe, actualiza el timestamp
        (Get-ChildItem $fileName).LastWriteTime = Get-Date
    }
}

### Creando un alias para touch

# Checar si el alias touch existe
if (-not(Test-Path -Path Alias:Touch)) {
    New-Alias -Name Touch Touch-File -Force
}


# Comandos Git 
function gcom {
    if (!$args) {
        echo "Error: Commit message is required."
        return;
    }
    git add .
    git commit -m "$args"
}

function gpush {
    if (!$args) {
        echo "Error: Commit message is required."
        return;
    }
    git add .
    git commit -m "$args"
    git push
}
