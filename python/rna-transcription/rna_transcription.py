def to_rna(dna):
    transcription = { 'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U' }
    try:
        return ''.join([transcription[base] for base in dna])
    except KeyError:
        return ''
