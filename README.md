Este repositorio contiene tres contratos inteligentes escritos en Solidity que forman un **exchange descentralizado (DEX)** simple, desplegable en la red Scroll Sepolia. Este proyecto tiene fines educativos para comprender cómo funcionan los intercambios de tokens con pools de liquidez.

## 📦 Contratos Incluidos

- `TokenA.sol` – Token ERC-20 personalizado llamado **TokenA**.
- `TokenB.sol` – Token ERC-20 personalizado llamado **TokenB**.
- `SimpleDEX.sol` – Contrato principal del exchange que permite intercambios y gestión de liquidez usando la fórmula del producto constante.

---

## 🎯 Funcionalidad del Exchange

El contrato `SimpleDEX` permite:

- ✅ **Agregar liquidez**: El owner puede depositar pares de TokenA y TokenB.
- 🔁 **Intercambiar tokens**: Cualquier usuario puede hacer swaps entre TokenA y TokenB.
- 🚪 **Retirar liquidez**: El owner puede retirar parcial o totalmente los tokens del pool.
- 💸 **Consultar precios**: Se puede consultar el precio actual de un token en relación con el otro.



---

## ¿Cómo probar los contratos en Remix?

1. Abre [Remix IDE](https://remix.ethereum.org/).
2. Crea tres archivos nuevos:
   - `TokenA.sol`
   - `TokenB.sol`
   - `SimpleDEX.sol`
3. Copia el contenido de cada contrato en su archivo correspondiente.
4. En la pestaña "Solidity Compiler", compila los tres contratos.
5. Cambia a la pestaña "Deploy & Run Transactions":
   - Selecciona la red **Scroll Sepolia** en tu wallet (MetaMask).
   - Asegurate de tener fondos (usa el faucet de Scroll).
   - Conecta Remix a MetaMask (usando Injected Provider).
6. Despliega `TokenA` y `TokenB`, y copia sus direcciones.
7. Despliega `SimpleDEX` pasando como parámetros las direcciones de `TokenA` y `TokenB`.
8. Llama a las funciones en este orden:
   - `approve(...)` desde TokenA y TokenB para permitir que `SimpleDEX` mueva tus tokens.
   - `addLiquidity(...)` desde `SimpleDEX` (solo si sos el owner).
   - `swapAforB(...)` o `swapBforA(...)` para intercambiar tokens.
   - `removeLiquidity(...)` para retirar tokens del pool.

---

## Objetivos de Aprendizaje

- Comprender cómo funcionan los DEX y los AMM.
- Practicar con contratos ERC-20.
- Implementar un sistema de liquidez básico y precios dinámicos.
- Trabajar con contratos desplegados y verificados en Scroll Sepolia.

---

## 🛠Requisitos Técnicos

- Solidity `^0.8.20`
- Remix IDE o entorno local con Hardhat
- MetaMask con red Scroll Sepolia configurada
- Tokens de prueba (faucet)

---

## Licencia

Este proyecto es de uso educativo y está bajo la licencia MIT.

---

