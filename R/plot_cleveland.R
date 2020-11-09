#' Produire un diagramme de Cleveland simple
#'
#' @param .data La base de données (tibble)
#' @param x La variable étudiée
#'
#' @examples covid7 %>% plot_cleveland(appareil)
#'
#' @export
plot_cleveland <- function(.data, x) {
  x = rlang::enquo(x)

  if(rlang::quo_is_missing(x)) {
    stop("L'argument x n'est pas spécifié. Quelle variable voulez-vous représenter ?")
  }

  .data %>%
    ggplot2::ggplot() +
    ggplot2::geom_point(aes(x = !!x), stat = "count") +
    ggplot2::theme_minimal() +
    ggplot2::labs(y = "") +
    ggplot2::coord_flip()
}
