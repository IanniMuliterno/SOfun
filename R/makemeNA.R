#' Recode Certain Values in a \code{data.frame} into \code{NA}
#' 
#' A flexible alternative to some of the tricks used to convert certain values
#' into \code{NA} after a dataset is already loaded in the workspace. Uses
#' \code{type.convert} and \code{na.strings} to allow conversion of multiple
#' values into \code{NA}.
#' 
#' 
#' @param mydf The input \code{data.frame}.
#' @param NAStrings The values or a vector of values that should be treated as
#' \code{NA}. Alternatively, this can be a regular expression.
#' @param fixed Logical. Defaults to \code{TRUE}. Set to \code{FALSE} if being
#' used with regular expressions.
#' @return A \code{data.frame}.
#' @author Ananda Mahto
#' @references \url{http://stackoverflow.com/a/14898521/1270695}
#' @examples
#' 
#' df1 <- structure(list(
#'   KY27PHY1 = c("4", "5", "5", "4", "-", "4", "2","3",
#'                "5", "-", "4", "3", "3", "5", "5"),
#'   KY27PHY2 = c("4", "4","4", "4", "-", "5", "2", "3",
#'                "5", "-", "5", "3", "3", "5", "5"),
#'   KY27PHY3 = c("5", "4", "4", "4", "-", "5", "1", "4",
#'                "5","-", "4", "3", "3", "5", "5")),
#'   .Names = c("KY27PHY1", "KY27PHY2","KY27PHY3"),
#'   row.names = 197:211, class = "data.frame")
#' df1
#' makemeNA(df1, "-")
#' 
#' df2 <- data.frame(A = c(1, 2, "-", "not applicable", 5),
#'                   B = c("not available", 1, 2, 3, 4),
#'                   C = c("-", letters[1:4]))
#' df2
#' makemeNA(df2, "not.*|-", fixed = FALSE)
#' 
#' temp <- structure(
#'   list(age = c(64.3573, 69.9043, 65.6633, 50.3693,
#'                57.0334, 81.4939, 56.954, 76.9298),
#'        CALCIUM = c(1.1, 8.1, 8.6, 8.1, 8.7, 1.1, 9.8, 9.1),
#'        CREATININE = c(NA, 1.1, 0.8, 1.3, 0.8, NA, 1, 0.8),
#'        GLUCOSE = structure(c(5L, 4L, 3L, 2L, 6L, 6L, 1L, 6L),
#'        .Label = c("", "418", "461", "472", "488", "NEG"),
#'                            class = "factor")),
#'   .Names = c("age", "CALCIUM", "CREATININE", "GLUCOSE"),
#'   class = "data.frame", row.names = c(NA, -8L))
#' temp
#' ## Change anything that is just text to NA
#' makemeNA(temp, "[A-Za-z]", fixed = FALSE)
#' ## Change any exact matches with "NEG" to NA
#' makemeNA(temp, "NEG")
#' ## Change any matches with 3-digit integers to NA
#' makemeNA(temp, "^[0-9]{3}$", fixed = FALSE)
#' 
#' @export makemeNA
makemeNA <- function (mydf, NAStrings, fixed = TRUE) {
  if (!isTRUE(fixed)) {
    mydf[] <- lapply(mydf, function(x) gsub(NAStrings, "", x))
    NAStrings <- ""
  }
  mydf[] <- lapply(mydf, function(x) type.convert(
    as.character(x), na.strings = NAStrings))
  mydf
}
