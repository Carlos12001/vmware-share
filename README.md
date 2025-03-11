# Repositorio VMware-Share

Este repositorio contiene scripts para facilitar la gestión de archivos compartidos y comandos dentro de un entorno basado en VMware. La funcionalidad principal gira en torno al script `ccp.sh`, que actúa como un sistema de almacenamiento basado en pila para entradas de texto, permitiendo a los usuarios agregar (`push`), eliminar (`pop`) y administrar datos de manera eficiente. Además, el script `install.sh` automatiza el proceso de configuración asegurando una instalación correcta.

## Instalación

Para instalar y configurar el repositorio, sigue estos pasos:

1. Clona o copia el repositorio en la ubicación deseada.
2. Navega hasta el directorio del repositorio:
   ```bash
   cd vmware-share
   ```
3. Da permisos de ejecución al script de instalación:
   ```bash
   chmod +x install.sh
   ```
4. Ejecuta el script de instalación:
   ```bash
   ./install.sh
   ```
5. El script realizará las siguientes acciones:
   - Detectará automáticamente la ruta de instalación.
   - Pedirá confirmación o modificación de la ruta detectada.
   - Actualizará `ccp.sh` con la ruta correcta del repositorio.
   - Modificará `~/.bashrc` para incluir las configuraciones necesarias (preguntando si deseas sobrescribir o añadir al final).

6. Recarga la configuración de bash:
   ```bash
   source ~/.bashrc
   ```

## Uso

Una vez instalado, los siguientes comandos estarán disponibles:

### Comandos `ccp`

| Comando        | Descripción |
|---------------|-------------|
| `ccp push <texto>`  | Agrega `<texto>` en la parte superior del archivo `information.txt`. |
| `ccp pop`     | Elimina y muestra la última entrada agregada. |
| `ccp send <mensaje>` | Realiza un commit y un push de `information.txt` en el repositorio. |
| `ccp check [n]` | Muestra la entrada número `n` más reciente (por defecto, la última). |
| `ccp size`    | Muestra el número total de entradas almacenadas. |
| `ccp clear`   | Borra todas las entradas almacenadas. |
| `ccp show`    | Muestra el contenido completo de `information.txt`. |

### Alias `ccd`

Se proporciona un alias `ccd` para cambiar rápidamente al directorio del repositorio.
```bash
ccd
```
Este alias se añade durante la instalación y puede modificarse en `~/.bashrc` si es necesario.

## Estructura de archivos

```
vmware-share/
│-- .bashrc       # Configuración personalizada de bash para el repositorio
│-- ccp.sh        # Script principal para gestionar entradas almacenadas
│-- install.sh    # Script de instalación y configuración
│-- information.txt # Almacena los mensajes ingresados (estructura de pila)
│-- README.md     # Documentación del repositorio
```

## Solución de Problemas

1. **Problemas de permisos**
   - Si ves errores como `Permission denied`, asegúrate de que tienes permisos de escritura:
     ```bash
     chmod u+w vmware-share/information.txt
     chmod u+w vmware-share
     ```

2. **El comando `ccp` no se encuentra**
   - Asegúrate de que `.bashrc` se haya cargado correctamente:
     ```bash
     source ~/.bashrc
     ```
   - También puedes intentar reiniciar la terminal.

3. **Rutas incorrectas**
   - Si la ruta del repositorio es incorrecta, vuelve a ejecutar la instalación:
     ```bash
     ./install.sh
     ```

## Contribución

Si deseas contribuir, puedes mejorar los scripts o actualizar la documentación. Abre un pull request o reporta problemas en el repositorio.

---

Para cualquier otra consulta, revisa este README o contacta con el mantenedor del repositorio.
