suma_string <- function(x, y) {
  if (is.character(x) || is.character(y)) {
    cli::cli_abort(c(
      "No puedo sumar los elementos porque detecté un texto.",
      "i" = "Asegúrate de ingresar solo valores numéricos."
    ))
  }else{
    x + y
  }
}


suma_negativos <-function(x,y){
  if(x < 0 || y < 0 || x & y < 0){
    print("No puedo sumar esos numeros")
  }else{
    x+y
  }
}
