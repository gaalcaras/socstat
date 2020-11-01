#' Lancer un tutoriel de "socstat"
#'
#' @param lesson_name Le nom de la leçon
#'
#' @examples run_lesson("intro")
#'
#' @export
run_lesson <- function(lesson_name) {
  learnr::run_tutorial(lesson_name,
                       package = "socstat")
}
