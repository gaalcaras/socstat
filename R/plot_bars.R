#' Produire un diagramme en barres simple
#'
#' @param .data La base de données (tibble)
#' @param x La variable étudiée
#'
#' @examples covid7 %>% plot_bars(pcs)
#'
#' @export
plot_bars <- function(.data, x) {
  x = rlang::enquo(x)

  if(rlang::quo_is_missing(x)) {
    stop("L'argument x n'est pas spécifié. Quelle variable voulez-vous représenter ?")
  }

  .data %>%
    ggplot2::ggplot() +
    ggplot2::geom_bar(aes(x = !!x)) +
    ggplot2::theme_minimal() +
    ggplot2::labs(y = "") +
    ggplot2::coord_flip()
}
