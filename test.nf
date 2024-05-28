params.input_file // Définition du paramètre input_file

// Processus pour lire le contenu du fichier
process read_file {
    input:
    file(input_file) from params.input_file

    output:
    stdout result // Résultat de la lecture du fichier

    script:
    """
    cat ${input_file}
    """
}

// Workflow principal
workflow {
    // Exécuter le processus read_file avec le fichier en entrée
    read_file(input_file)
}

