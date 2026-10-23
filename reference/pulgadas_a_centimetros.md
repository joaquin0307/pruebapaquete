# Convertir pulgadas a centímetros

Convierte una medida en pulgadas a centímetros multiplicándola por 2.54.

## Usage

``` r
pulgadas_a_centimetros(medida_pulgadas)
```

## Arguments

- medida_pulgadas:

  Valor o vector numérico con la medida en pulgadas.

## Value

Un vector numérico con la medida en centímetros, del mismo largo que
`medida_pulgadas`. Si `medida_pulgadas` no es numérico, da un error.

## Examples

``` r
pulgadas_a_centimetros(1)
#> [1] 2.54
pulgadas_a_centimetros(c(0, 1, 12))
#> [1]  0.00  2.54 30.48
```
