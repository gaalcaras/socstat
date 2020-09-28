#' @export
run_lesson <- function(lesson_name) {
  learnr::run_tutorial(lesson_name,
                       package = "socstat")
}
