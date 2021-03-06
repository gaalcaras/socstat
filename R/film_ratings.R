#' Notes presse des films sortis entre 2010 et 2019
#'
#' Base de données constituée à partir des notes presse d'Allociné
#' pour tous les films parus entre 2010 et 2019.
#'
#' @format Une base de données avec 96 911 notes et 7 variables :
#' \describe{
#'   \item{film}{Titre du film}
#'   \item{date}{Date de sortie française en salles}
#'   \item{duration}{Durée du film en minutes}
#'   \item{genre}{Genre du film}
#'   \item{nationality}{Nationalité du film}
#'   \item{paper}{Nom de la publication (journal, magazine, site internet, ...)}
#'   \item{rating}{Note sur 5 que la publication a accordé au film}
#' }
#' @source \url{https://allocine.fr}
"film_ratings"
