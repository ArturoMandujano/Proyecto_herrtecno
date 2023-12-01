# Taller-de-productividad-basada-en-herramientas-tecnologicas
## Resumen ejecituvo
### Descripción
En este repositorio se crearán las actividades a llevar a cabo, se categorizaran con etiquetas y se establecerá un tiempo estimado con base a las fases anteriores de este taller. Se agruparán y definirá su madurez con etapas definidas. Crear y administrar el código de la base de datos. 
### Problema identificado
Falta de: información, automatización de manejo de datos, posibilidad de realizar consultas estructuradas para la obtención de resultados espcificos, y una organización digital como lo es una base de datos; también tienen procesos lentos y tediosos.
### Solución
Crear una base de datos relacional, que tenga diferentes tablas que permitan almacenar y gestionar los diferentes tipos de datos de la dulcería y poder trabajar en conjunto.
### Arquitectura
DRDA (Arquitectura de Base de Datos Relacional Distribuida)

## Requerimientos
1. Microsoft SQL Server Management Studio 18 como servidor y base de datos
2. Tabla de Categorías para categorizar los productos
3. Tabla de Productos para registrar todos los productos en stock
4. Tabla de las Ventas para registrar todas las operaciones de venta
5. Tabla de Detalles de ventas para registrar todas las operaciones de venta
6. Tabla de Clientes para registrar todas las operaciones de venta
7. Querys o Procedimientos almacenados para repetir instrucciones
8. Crear una forja de alojamiento en Github

## Instalación 
https://sqlserverbuilds.blogspot.com/2018/01/sql-server-management-studio-ssms.html
Descarga e intala Studio 18, para ejecutar pruebas podrán clonar el código de Dulces_Regionales V1.sql y tendrán todo el contenido (es necesario tener una base de datos llamada ´Dulces_Regionales_Los_Robles´)
De manera local será que cada cuenta tenga su propio servidor de SQL con sus respectivos permisos, y en la nube por medio de pull request en el repositorio

## Configuración
Se revisarán los requerimientos con los interesados para garantizar que todos estén alineados y entendidos correctamente.
Comprender las necesidades y objetivos comerciales de la dulcería, identificar las ventajas de tener una gestión de inventario, de ventas, de clientes y proveedores. Documentar los requerimientos funcionales y no funcionales del sistema.
Esta actividad será una versión beta donde se visualizará como están los datos y como funcionarán los componentes de la base de datos, cualquier representación visual.

## Uso
Diseñar la estructura de la base de datos, incluyendo las tablas, campos, claves primarias y foráneas, y las relaciones entre las tablas, logrando garantizar una base coherente, consistente y de calidad.
La base de datos tiene 5 tablas y son las siguientes:
1. Categoría: CategoriaID, NombreCategoria, descripcion
2. Productos: ProductoID, NombreProducto, DescripcionProducto, Precio, Stock, CategoriaID
3. Clientes: ClienteID, NombreCLiente, Email, Teléfono
4. Venta: VentaID, FechaVenta, ClienteID
5. Detalle_Venta: DetalleID, VentaID, ProductoID, Cantidad, PrecioUnitorio, PrecioTotal

## Contribución
Clonar el repositorio:
1. Ve a el repositorio que desee clonar
2. Copia el código de clonar (arriba a la derecha)
3. Navega al directorio donde desee clonar el repositorio
4. Ejecuta el comando: git clone <URL_del_repositorio>

Crear un branch:
1. Navega al directorio del repositorio clonado: cd <nombre_del_directorio>
2. Crear branch con el comando: git checkout -b <nombre_del_nuevo_branch>

Realizar cambios y hacer commit
1. Realiza los cambios necesarios en los archivos del proyecto.
2. Añade los cambios al área de preparación: git add .
3. Realiza un commit con un mensaje descriptivo: git commit -m "Mensaje descriptivo de los cambios"

Enviar un Pull Request
1. Sube el nuevo branch al repositorio remoto: git push origin <nombre_del_nuevo_branch>
2. Visita la página del repositorio en GitHub.
3. Deberías ver un botón verde que dice "Compare & pull request". Haz clic en él.
4. Proporciona detalles sobre los cambios realizados y haz clic en "Create pull request".

Esperar revisión y Merge
1. Revisión de cambios de otros colaboradores y retroalimentación
2. Si los cambios son aceptados, un colaborador realizará el marge del pull request
3. EL código se fuisonará con el branch principal del repositorio

## Roadmap
Establecer una gestión de cambio para medir el proceso para gestionar cambios en los requerimientos a medida que surgen nuevas necesidades o modificaciones durante el desarrollo.

## Ejemplo de resultados
![](https://github.com/ArturoMandujano/Proyecto_herrtecno/blob/main/SQL%20Ejemplo.PNG)

