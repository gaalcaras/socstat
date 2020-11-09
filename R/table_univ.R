#' Produire un tri à plat simple sur une variable
#'
#' @param .data La base de données (tibble)
#' @param x La variable étudiée
#'
#' @examples covid7 %>% table_univ(pcs)
#'
#' @export
table_univ <- function(.data, x) {
  x = rlang::enquo(x)

  if(rlang::quo_is_missing(x)) {
    stop("L'argument x n'est pas spécifié. Quelle variable voulez-vous représenter ?")
  }

  .data %>%
    janitor::tabyl(!!x) %>%
    janitor::adorn_totals(name = "Ensemble") %>%
    janitor::adorn_pct_formatting(col = percent)
}
