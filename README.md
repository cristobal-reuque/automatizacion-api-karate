# Desafio Automatización API's con Karate
Framework de Automatización de API's Utilizando Karate + Cucumber + Maven

## Descripcion
Este proyecto tiene como objetivo automatizar pruebas de API utilizando Karate DSL sobre la API pública de Swagger Petstore:

https://petstore.swagger.io/

El framework está preparado para ejecutar escenarios distribuidos en diferentes archivos .feature, organizados por módulo o funcionalidad, y soporta ejecución centralizada mediante runners.

## Objetivo del proyecto
Validar el comportamiento de los endpoints principales de la API Petstore, incluyendo:

- Crear mascotas
- Consultar mascotas por ID
- Eliminar mascotas

## Tecnologías utilizadas
- Java 17
- Maven 3.9.15
- Karate DSL
- JUnit 5

## Estructura del proyecto

```text
src
└── test
    └── java
        └── example.pets
        │   ├── consultar-mascota.feature
        │   ├── ConsultarMascotaRunner.java
        │   ├── crear-mascota.feature
        │   ├── CrearMascotaRunner.java
        │   ├── eliminar-mascota.feature
        │   ├── EliminarMascotaRunner.java
        │   ├── Runner.java
        └── karate-config.js
```

## Requisitos previos
Antes de ejecutar el proyecto, asegúrate de tener instalado:
- Java 17 o superior
- Maven 3.9+
- Git
- Verificar versiones:

```bash
java -version
mvn -version
git --version
```

## Instalación

Clonar el repositorio:

```bash
git clone https://github.com/cristobal-reuque/automatizacion-api-karate.git
```

Ingresar al proyecto:

```bash
cd automatizacion-api-karate
```

Instalar dependencias:

```bash
mvn clean install
```

## Ejecución de pruebas

### Ejecutar todos los escenarios

```bash
mvn clean test -Dtest=Runner
```
### Ejecutar por feature
```bash
mvn clean test -Dtest=CrearMascotaRunner
```
```bash
mvn clean test -Dtest=ConsultarMascotaRunner
```
```bash
mvn clean test -Dtest=EliminarMascotaRunner
```
## Reportes

Después de la ejecución, los reportes pueden encontrarse en:

```text
target\karate-reports\karate-summary.html
```

