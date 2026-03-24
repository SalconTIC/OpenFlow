# Open Flow

_Proyecto para implementar pantallas de FlutterFlow directamente_

*Lista de funcionalidades:*
* ....
* ....
* ...
* ..
* ..

## Flujo de trabajo con GitHub

### 1.- Configuaración inicial:


#### Clonar repositorio
```
$ git clone https://github.com/SalconTIC/OpenFlow.git
```

#### Configurar identidad
```
$ git config --get [variable]
$ git config --global user.name "Nombre "
$ git config --global user.email "Email" 
```

### 2.- Ciclo diario de trabajo:
#### A.- Sincronizar la base
```
$ git checkout main
$ git pull origin main 
```

#### B.- Crear una rama para la tarea
Ejemplo: feature/login-screen, fix/error-registro

```
$ git checkout -b feature/tarea
```

#### C.- Desarrollar y guardar cambios
Añadir aquellos ficheros que se quiere rastrear sus cambios

```
$ git add .
$ git commit -m "Mensaje con el contenido del commit"
```

#### D.- Subir rama al rempositorio de GitHub
```
$ git push origin feature/tarea
```


### 3.- Integración y revisión (En GitHub):
Una vez que subes tu rama y ya está completa, es hora de unirlo al proyecto principal:

1. Pull Request (PR): Ve a GitHub y haz clic en "Compare & pull request". Aquí explicas qué hiciste.
1. Code Review: Tus compañeros revisan tu código, dejan comentarios y, si todo está bien, lo aprueban.
1. Merge: Una vez aprobado, se presiona el botón "Merge pull request". Esto fusiona tus cambios en la rama main.


### 4- Integración y revisión (En GitHub):
Después de que tu código ya vive en main, limpia tu entorno para evitar confusiones.

```bash
# Regresa a la rama main
git checkout main

# Baja los cambios que acabas de fusionar (y los de otros)
git pull origin main

# Borra la rama local que ya no sirve
git branch -d feature/nombre-de-tu-tarea

```


## Tabla de Comandos Git Esenciales

| Acción | Comando |
| :--- | :--- |
| **Ver estado** de mis archivos | `git status` |
| **Ver historial** de cambios (resumido) | `git log --oneline` |
| **Deshacer** cambios locales (sin commit) | `git restore .` |
| **Cambiar** a una rama existente | `git checkout nombre-rama` |
| **Crear y saltar** a una rama nueva | `git checkout -b nueva-rama` |
| **Ver todas** las ramas locales | `git branch` |
| **Sincronizar** con el servidor (bajar cambios) | `git pull origin main` |
| **Subir** cambios al servidor | `git push origin nombre-rama` |


Además:   
* `git log --oneline --graph --all`. Dibujará las ramificaciones en la terminal como si fuera un mapa del metro.
* Si haces un commit y quieres modificar el mensaje: `git commit --amend -m "Mensaje corregido"`
* Se pueden crear alias para comandos muy largos, por ejemplo: `git config --global alias.tree "log --oneline --graph --all --decorate"`, para usar `git tree`

Añadir algo random
