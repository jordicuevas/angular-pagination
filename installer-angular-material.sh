#!/bin/bash
# Bash for easy install angular material
# @uthor: Jordi Cuevas
# license: GPL V3
# Installer of angular material
echo "

   _____                       .__                    _____          __               .__       .__
  /  _  \   ____    ____  __ __|  | _____ _______    /     \ _____ _/  |_  ___________|__|____  |  |
 /  /_\  \ /    \  / ___\|  |  \  | \__  \\_  __ \  /  \ /  \\__  \\   __\/ __ \_  __ \  \__  \ |  |
/    |    \   |  \/ /_/  >  |  /  |__/ __ \|  | \/ /    Y    \/ __ \|  | \  ___/|  | \/  |/ __ \|  |__
\____|__  /___|  /\___  /|____/|____(____  /__|    \____|__  (____  /__|  \___  >__|  |__(____  /____/
        \/     \//_____/                 \/                \/     \/          \/              \/

"
PS3='Seleccione la version de angular en la cual desea instalar Angular Material: '
options=("Angular menor a 8" "Angular > 8" "Salir")
select opt in "${options[@]}"
do
    case $opt in
        "Angular menor a 8")
            echo ">>>>>>Instalando Angular Material y Animations"
            npm install --save @angular/material@7.1.0 @angular/cdk@7.1.0 @angular/animations@7.1.0
            sed -i "1 a import { BrowserAnimationsModule } from '@angular/platform-browser/animations';" src/app/app.module.ts
            sed -i '/imports/a BrowserAnimationsModule,' src/app/app.module.ts
            echo ">>>>>>Agregando tema por defecto a styles.scss"
            sed -i "1 a @import '~@angular/material/prebuilt-themes/indigo-pink.css';" src/styles.scss
            echo ">>>>>>Instalando Hammer JS"
            npm install hammerjs
            sed -i "1 a import 'hammerjs';" src/main.ts
            echo ">>>>>>Creando el modulo para importar los modulos de angular material"
            touch src/app/material.module.ts
            echo " // Material modules imports go here" >> src/app/material.module.ts
            sed -i "1 a import { NgModule } from '@angular/core';" src/app/material.module.ts
            sed -i "2 a import { MatButtonModule, MatCheckboxModule } from '@angular/material';" src/app/material.module.ts
            sed -i "3 a  @NgModule({" src/app/material.module.ts
            sed -i "4 a     imports: [ MatButtonModule, MatCheckboxModule ]," src/app/material.module.ts
            sed -i "5 a    exports: [MatButtonModule, MatCheckboxModule ]," src/app/material.module.ts
            sed -i "6 a   })" src/app/material.module.ts
            sed -i "7 a export class MaterialModule { } " src/app/material.module.ts
            sed -i "1 a import { MaterialModule } from './material.module';" src/app/app.module.ts
            sed -i '/imports/a MaterialModule,' src/app/app.module.ts
            echo ">>>>>>Se ha instalado angular material en tu proyecto<<<<<<"

            break
            ;;
        "Angular > 8")
            echo ">>>>>>Instalando Angular Material y Animations"
            npm install --save @angular/material @angular/cdk @angular/animations
            sed -i "1 a import { BrowserAnimationsModule } from '@angular/platform-browser/animations';" src/app/app.module.ts
            sed -i '/imports/a BrowserAnimationsModule,' src/app/app.module.ts
            echo ">>>>>>Agregando tema por defecto a styles.scss"
            sed -i "1 a @import '~@angular/material/prebuilt-themes/indigo-pink.css';" src/styles.scss
            echo ">>>>>>Instalando Hammer JS"
            npm install hammerjs
            sed -i "1 a import 'hammerjs';" src/main.ts
            echo ">>>>>>Creando el modulo para importar los modulos de angular material"
            touch src/app/material.module.ts
            echo " // Material modules imports go here" >> src/app/material.module.ts
            sed -i "1 a import { NgModule } from '@angular/core';" src/app/material.module.ts
            sed -i "2 a import { MatButtonModule, MatCheckboxModule } from '@angular/material';" src/app/material.module.ts
            sed -i "3 a  @NgModule({" src/app/material.module.ts
            sed -i "4 a     imports: [ MatButtonModule, MatCheckboxModule ]," src/app/material.module.ts
            sed -i "5 a    exports: [MatButtonModule, MatCheckboxModule ]," src/app/material.module.ts
            sed -i "6 a   })" src/app/material.module.ts
            sed -i "7 a export class MaterialModule { } " src/app/material.module.ts
            sed -i "1 a import { MaterialModule } from './material.module';" src/app/app.module.ts
            sed -i '/imports/a MaterialModule,' src/app/app.module.ts
            echo ">>>>>>Se ha instalado angular material en tu proyecto<<<<<<"

            break
            ;;
        "Salir")
            break
            ;;
        *) echo "opcion invalida $REPLY";;
    esac
done
