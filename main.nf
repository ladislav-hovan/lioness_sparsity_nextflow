include { FilterExpressionPriors } from "./modules/filter_expression_priors.nf"

workflow {

    // TODO: Config file of some sort for file names/settings

    // Get the raw expression and priors
    ch_input = Channel.fromPath([
        "./input/expression_tcga_brca_raw_nohead.tsv",
        "./input/motif_prior.tsv",
        "./input/ppi_prior.tsv",
    ])
    ch_input_grouped = ch_input.collect()

    // Preprocess to match genes/TFs
    ch_filtered = FilterExpressionPriors(ch_input_grouped)

    // Split into different sparsity channels and sparsify

    // Plot the expression correlation

}