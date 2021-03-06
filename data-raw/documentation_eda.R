documentation_eda <- function(first_element, documentation_df) {
    dataset_name <- documentation_df$seealso[first_element]
    figure_names <- dir("./man/figures")
    figure_subset <- startsWith(figure_names, dataset_name)
    figure_names[figure_subset] %>%
        paste0("\n#' \\if{html}{\\figure{", ., "}{options: width=\"100\\%\"}}",
               "\n#' \\if{latex}{An EDA figure is available in the HTML documentation}\n#'\n#'",
               collapse = "")
}
