# config-powershell

## Descargar y configurar Terminal y Powershell 7
La descarga es desde Microsoft store, en mi caso me funciono con powershell 7 preview, sin embargo pueden usar powershell 7:

![image](https://github.com/kevin-alexis/config-poweshell/assets/77393819/b275a198-e1ae-421b-b22a-8f3d3817eff9)

![image](https://github.com/kevin-alexis/config-poweshell/assets/77393819/8bf81caf-ea50-4180-b330-360a73d1f45a)

![image](https://github.com/kevin-alexis/config-poweshell/assets/77393819/bba0ae20-81c5-4d78-90ca-e11ab549f504)

## Búsqueda de la versión más reciente de PowerShell
```
winget search Microsoft.PowerShell
```

## Actualizar Powershell - Instalación de PowerShell o PowerShell (versión preliminar) mediante el parámetro id
```
winget install --id Microsoft.Powershell --source winget
winget install --id Microsoft.Powershell.Preview --source winget
```

## Añadir Tema de color al archivo JSON
```
{
	"name": "Snazzy",
	"foreground": "#eff0eb",
	"background": "#282a36",
	"selectionBackground": "#3e404a",
	"cursorColor": "#97979b",
	"black": "#282a36",
	"red": "#ff5c57",
	"green": "#5af78e",
	"yellow": "#f3f99d",
	"blue": "#57c7ff",
	"purple": "#ff6ac1",
	"cyan": "#9aedfe",
	"white": "#f1f1f0",
	"brightBlack": "#686868",
	"brightRed": "#ff5c57",
	"brightGreen": "#5af78e",
	"brightYellow": "#f3f99d",
	"brightBlue": "#57c7ff",
	"brightPurple": "#ff6ac1",
	"brightCyan": "#9aedfe",
	"brightWhite": "#eff0eb"
}
```

## Instalación de Oh My Posh

```
winget install JanDeDobbeleer.OhMyPosh -s winget
```

## Instalación de fuentes
```
# NOTA: Recomendable utilizar Hack Nerd Font Mono
oh-my-posh font install
```

## Instalación de Iconos para archivos y carpetas
```
Install-Module -Name Terminal-Icons -Repository PSGallery
```

## Instalar modulo de Git
```
Install-Module posh-git -Scope CurrentUser
```

## Instalación de lsd
```
choco install lsd
```

## Configurar de archivo #PROFILE

Debemos configurar Oh-My-Posh, editando el fichero $PROFILE. Si es la primera vez que lo editamos previamente tendremos que crearlo ejecutando

```
New-Item -Path $PROFILE -Type File -Force
```

Abrimos el fichero con el siguiente comando
```
notepad $PROFILE
```

Añadimos la siguiente configuración en el fichero, en este se incluye oh my posh, posh-git, terminal-icons y una lista del historial de comando para realizar predicciones
```
# oh-my-posh init pwsh --config 'C:/PowerShell/config.omp.json' | Invoke-Expression
oh-my-posh init pwsh | Invoke-Expression
Import-Module posh-git
Import-Module -Name Terminal-Icons
set-PSReadLineOption -PredictionViewStyle ListView
Set-Alias ls lsd
function l { lsd -l $args }
function la { lsd -a $args }
function lla { lsd -la $args }
function lt { lsd --tree $args }
```

Ejecutamos la configuració en el powershell con el siguiente comando
```
. $PROFILE
```

## CREDITOS
[Contribution guidelines for this project](https://github.com/Richienb/windows-terminal-snazzy/blob/main/snazzy.json)
[Contribution guidelines for this project](https://podter.me/blog/pwsh-customization)




