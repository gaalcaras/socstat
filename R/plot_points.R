#' Produire un nuage de points simple
#'
#' @param .data La base de données (tibble)
#' @param x La variable étudiée
#'
#' @examples covid7 %>% plot_points(logement_pieces)
#'
#' @export
plot_points <- function(.data, x) {
  x = rlang::enquo(x)

  if(rlang::quo_is_missing(x)) {
    stop("L'argument x n'est pas spécifié. Quelle variable voulez-vous représenter ?")
  }

  .data %>%
    ggplot2::ggplot() +
    ggplot2::geom_point(aes(x = !!x), stat = "count") +
    ggplot2::theme_minimal() +
    ggplot2::labs(y = "")
}
