# Expectativas para pulgadas_a_centimetros()
#
# | Situación                     | Resultado esperado          | Función           |
# |-------------------------------|-----------------------------|-------------------|
# | 1 pulgada                     | 2.54                        | expect_equal()    |
# | número real (7.5)             | 19.05                       | expect_equal()    |
# | 0 pulgadas                    | 0                           | expect_equal()    |
# | vector c(0, 1, 12)            | c(0, 2.54, 30.48)           | expect_equal()    |
# | vector de 3 valores           | devuelve 3 valores          | expect_length()   |
# | medida positiva               | resultado mayor a la medida | expect_gt()       |
# | medida negativa (-1)          | resultado menor a 0         | expect_lt()       |
# | cualquier número              | devuelve un número (double) | expect_type()     |
# | texto ("100")                 | error "debe ser numérico"   | expect_error()    |
# | lógico (TRUE)                 | error "debe ser numérico"   | expect_error()    |
# | NA                            | error (NA es lógico)        | expect_error()    |

test_that("convierte bien valores conocidos", {
  expect_equal(pulgadas_a_centimetros(1), 2.54)
  expect_equal(pulgadas_a_centimetros(7.5), 19.05)
  expect_equal(pulgadas_a_centimetros(0), 0)
})

test_that("funciona con vectores", {
  expect_equal(pulgadas_a_centimetros(c(0, 1, 12)), c(0, 2.54, 30.48))
  expect_length(pulgadas_a_centimetros(c(0, 1, 12)), 3)
})

test_that("el resultado tiene sentido", {
  expect_gt(pulgadas_a_centimetros(10), 10)
  expect_lt(pulgadas_a_centimetros(-1), 0)
  expect_type(pulgadas_a_centimetros(5), "double")
})

test_that("da error si el argumento no es numérico", {
  expect_error(pulgadas_a_centimetros("100"), "debe ser numérico")
  expect_error(pulgadas_a_centimetros("100"), "character")
  expect_error(pulgadas_a_centimetros(TRUE), "debe ser numérico")
  expect_error(pulgadas_a_centimetros(NA))
})
