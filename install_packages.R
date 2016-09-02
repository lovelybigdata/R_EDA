## === install required packages ===
pkg_list <- c("magrittr", "dplyr", "tidyr", "data.table", "ggplot2",
              "devtools",
              "readr", "lubridate", "extrafont", "ggrepel","readxl","openxlsx",
              "dtplyr", "purrr", "leaftlet", "ggplot2moives", "extrafont", "cowplot", "ggrepel")
pkg_new <- pkg_list[!(pkg_list %in% installed.packages()[,"Package"])]

if("data.table" %in% pkg_new) {
    install.packages("data.table", type = "source",
                      repos = "https://Rdatatable.github.io/data.table")
} else if (packageDescription("data.table")$Version < "1.9.7") {
    install.packages("data.table", type = "source",
                      repos = "https://Rdatatable.github.io/data.table")
}

pkg_new <- pkg_list[!(pkg_list %in% installed.packages()[,"Package"])]

if(length(pkg_new)) install.packages(pkg_new)

rm(pkg_new, pkg_list)














