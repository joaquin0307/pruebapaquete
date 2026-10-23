#' Convertir pulgadas a centímetros
#'
#' Convierte una medida en pulgadas a centímetros multiplicándola por 2.54.
#'
#' @param medida_pulgadas Valor o vector numérico con la medida en pulgadas.
#'
#' @returns Un vector numérico con la medida en centímetros, del mismo largo
#'   que `medida_pulgadas`. Si `medida_pulgadas` no es numérico, da un error.
#' @export
#'
#' @examples
#' pulgadas_a_centimetros(1)
#' pulgadas_a_centimetros(c(0, 1, 12))
pulgadas_a_centimetros <- function(medida_pulgadas) {

  if (!is.numeric(medida_pulgadas)) {
    cli::cli_abort(c(
      "medida_pulgadas debe ser num\u00e9rico.",
      "i" =  "La variable ingresada es un {class(medida_pulgadas)[1]}."
    ))
  }

  medida_pulgadas * 2.54
}
