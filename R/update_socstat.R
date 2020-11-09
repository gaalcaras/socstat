#' Mettre à jour le paquet socstat
#'
#' @examples update_socstat()
#'
#' @export
update_socstat <- function() {
  rstudioapi::restartSession(command = 'devtools::install_github("gaalcaras/socstat")')
}
