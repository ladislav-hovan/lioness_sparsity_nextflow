process FilterExpressionPriors {

    publishDir "output/filtered_input"

    input:
    tuple path(expr), path(motif_prior), path(ppi_prior)

    output:
    path("f_expression.tsv")
    tuple path("f_motif_prior.tsv"), path("f_ppi_prior.tsv"), emit: priors

    """
    filter_expression_and_priors.py \
        -e ${expr} \
        -mp ${motif_prior} \
        -pp ${ppi_prior} \
        -eo f_expression.tsv \
        -mpo f_motif_prior.tsv \
        -ppo f_ppi_prior.tsv
    """

}