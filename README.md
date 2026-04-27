# Mobile Automation Framework

Framework de automatización móvil desarrollado para la automatización end-to-end de flujos críticos en aplicaciones móviles Android e iOS utilizando Robot Framework y Appium bajo arquitectura Page Object Model (POM).

---

# Tecnologías utilizadas

* Robot Framework
* Appium
* AppiumLibrary
* Python
* Android Emulator
* iOS Simulator
* Page Object Model (POM)

---

# Objetivo del proyecto

Automatizar el flujo completo de compra dentro de la aplicación móvil incluyendo:

* Login
* Selección de producto
* Agregado al carrito
* Checkout
* Pago
* Confirmación de orden

El framework soporta ejecución multiplataforma:

* Android
* iOS

---

# Arquitectura del proyecto

```text
mobile-prueba-automatizacion/
│
├── apps/
│   ├── android/
│   │   └── my-demo-app.apk
│   └── ios/
│       └── MyDemoApp.app
│
├── pages/
│   ├── android_login_page.resource
│   ├── android_products_page.resource
│   ├── android_cart_page.resource
│   ├── android_checkout_page.resource
│   ├── android_payment_page.resource
│   ├── android_confirmation_page.resource
│   │
│   ├── ios_login_page.resource
│   ├── ios_products_page.resource
│   ├── ios_checkout_page.resource
│   ├── ios_payment_page.resource
│   └── ios_confirmation_page.resource
│
├── resources/
│   ├── capabilities.resource
│   └── common_keywords.resource
│
├── tests/
│   ├── checkout_flow_android.robot
│   └── checkout_flow_ios.robot
│
├── execution-evidence/
│
├── requirements.txt
├── README.md
└── .gitignore
```

---

# Patrón de diseño utilizado

## Page Object Model (POM)

Cada pantalla de la aplicación se encuentra desacoplada en archivos independientes dentro de la carpeta `pages/`.

Esto permite:

* reutilización de código
* mantenibilidad
* escalabilidad
* separación de responsabilidades
* fácil actualización de locators

---

# Instalación del proyecto

## 1. Clonar repositorio

```bash
git clone https://github.com/prensaalexolaya-png/mobile-prueba-automatizacion.git
cd mobile-prueba-automatizacion
```

---

## 2. Crear entorno virtual

### macOS / Linux

```bash
python3 -m venv venv
source venv/bin/activate
```

### Windows

```bash
python -m venv venv
venv\Scripts\activate
```

---

## 3. Instalar dependencias

```bash
pip install -r requirements.txt
```

---

# Dependencias utilizadas

```txt
robotframework==7.1.1
robotframework-appiumlibrary==2.1.0
Appium-Python-Client==4.1.0
selenium==4.25.0
```

---

# Instalación de drivers Appium

```bash
appium driver install uiautomator2
appium driver install xcuitest
```

---

# Requisitos previos

Antes de ejecutar el proyecto es necesario tener instalado:

## Android

* Android Studio
* Android SDK
* Android Emulator configurado
* Java 17
* Appium Server

## iOS

* macOS
* Xcode
* iOS Simulator
* Appium Server
* Driver XCUITest

---

# Variables de entorno Android

```bash
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator
```

---

# Inicio de Appium

```bash
appium
```

Servidor por defecto:

```text
http://127.0.0.1:4723
```

---

# Ejecución de pruebas

## Android

```bash
robot -d results/android -v PLATFORM:Android tests/checkout_flow_android.robot
```

---

## iOS

```bash
robot -d results/ios -v PLATFORM:iOS tests/checkout_flow_ios.robot
```

---

# Estrategia de automatización

El framework implementa:

* waits explícitos
* reutilización de keywords
* separación por plataforma
* manejo de teclado virtual iOS
* localizadores optimizados
* automatización desacoplada por pantallas

---

# Manejo especial iOS

Durante la automatización en iOS se identificaron diferencias de comportamiento respecto a Android, especialmente relacionadas con la interacción del teclado virtual dentro del iOS Simulator.

Para garantizar estabilidad en la ejecución automatizada, se implementó una estrategia específica de manejo y ocultamiento del teclado antes de avanzar entre pantallas.

Adicionalmente, la ejecución fue validada sobre iOS 17.5 debido a compatibilidad observada con la aplicación de prueba utilizada.

---

## Estrategia de selectores

Se priorizó el uso de Accessibility ID cuando la aplicación los expone.

Para algunos elementos en iOS, Appium Inspector no presentó identificadores accesibles únicos, por lo que se utilizaron XPaths relativos optimizados basados en atributos estables como `name`, `label` o `value`.

No se utilizaron XPaths absolutos.

---

## Evidencias de ejecución

Las evidencias de ejecución se encuentran en:

```text
execution-evidence/
```

Archivos incluidos:

* report.html
* log.html

---

# Flujo automatizado

## Flujo cubierto

* Inicio de sesión
* Selección de producto
* Agregado al carrito
* Checkout
* Pago
* Confirmación de compra exitosa

---

## Manejo de esperas

El framework utiliza esperas explícitas mediante `Wait Until Element Is Visible` antes de interactuar con elementos.

En iOS se mantienen algunas pausas cortas (`Sleep 0.5s` y `Sleep 1s`) únicamente como estabilización visual del simulador, especialmente después de escritura en campos y ocultamiento del teclado virtual.

Estas pausas no reemplazan las esperas explícitas principales.

---

# Autor

Proyecto desarrollado como prueba técnica de automatización mobile utilizando Robot Framework y Appium.
