#' Produire un histogramme simple
#'
#' @param .data La base de données (tibble)
#' @param x La variable étudiée
#'
#' @examples covid7 %>% plot_hist(logement_pieces)
#'
#' @export
plot_hist <- function(.data, x) {
  x = rlang::enquo(x)

  if(rlang::quo_is_missing(x)) {
    stop("L'argument x n'est pas spécifié. Quelle variable voulez-vous représenter ?")
  }

  .data %>%
    ggplot2::ggplot() +
    ggplot2::geom_histogram(aes(x = !!x)) +
    ggplot2::theme_minimal() +
    ggplot2::labs(y = "")
}
