#!/usr/bin/env nextflow

params.file_int = 5

file_int = params.file_int

/*
 * Split a fasta file into multiple files
 */
process splitSequences {
    output:
    stdout

    script:
    """
    echo "Running cat on ${file_path}" >&2
    cat ${file_path}
    """
}


/*
 * Define the workflow
 */
splitSequences.view {it.trim()}

