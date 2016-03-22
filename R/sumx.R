#' sumx function
#'
#' This function provides you with sum of two integer parameters converted to hex string.
#' @param a first integer parameter
#' @param b second integerparameter
#' @export
#' @import rPython
#' @examples
#' library(pythonTestPackage)
#' sumx(1,2)

sumx <- function(a, b) {
    if (missing(a)) {
      stop("sumx : Parameter a missing")
    }
    if (missing(b)) {
      stop("sumx : Parameter b missing")
    }
    if (!is.numeric(a) || !length(a)>0 || a%%1!=0) {
      stop("sumx : Parameter a is not integer")
    }
    if (!is.numeric(b) || !length(b)>0 || b%%1!=0) {
      stop("sumx : Parameter b is not integer")
    }
    python.assign('a', a)
    python.assign('b', b)
    python.exec('c = hex(a+b)')
    c <- python.get('c')
    return(c)
}
