# Solidity_Fibo 🚀

## Descripción
**Solidity_Fibo** es un contrato inteligente desarrollado en Solidity que permite generar y consultar la serie de Fibonacci. Los usuarios pueden especificar el número de términos deseados, y la secuencia se almacena en la blockchain, asegurando persistencia y accesibilidad para consultas futuras.

## Características
- **Generación Dinámica:** Calcula y almacena la secuencia de Fibonacci hasta un número específico de términos definidos por el usuario.
- **Almacenamiento Persistente:** Guarda la secuencia en la blockchain, permitiendo que los resultados sean consultados en cualquier momento.
- **Acceso Directo:** Permite calcular un término específico de la serie sin necesidad de regenerar la secuencia completa.

## Tecnologías Utilizadas
- **Solidity:** Versión `0.8.24` (incluye control de desbordamientos y otras mejoras de seguridad).
- **Remix IDE:** Para pruebas, depuración y despliegue del contrato inteligente.
- **Opcional:** Hardhat o Truffle para pruebas automatizadas y despliegue avanzado.

## Uso

### 1. Generar la secuencia de Fibonacci
Llama a la función `generateFibonacci(uint terms)` con el número deseado de términos.

**Ejemplo:**
```solidity
generateFibonacci(10);
```

### 2. Consultar la secuencia generada
Usa la función `getSequence()` para recuperar la secuencia almacenada.

**Ejemplo de uso:**
```solidity
getSequence();
```

**Resultado esperado:**
```
[0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
```

### 3. Obtener un término específico
Llama a `getFibonacci(uint index)` para calcular el valor de Fibonacci en un índice determinado.

**Ejemplo:**
```solidity
getFibonacci(6);
```

**Resultado esperado:**
```
8
```
