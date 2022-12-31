# Import parts of Biopython
from Bio import SeqIO
# Adds progress bar
# Run pip install tqdm in terminal for this to work
from tqdm import tqdm 

# File path to your FASTA file
path_to_ref = 'parc_ref_aa_seq.faa'   # Reference data

with open(path_to_ref, mode='r') as ref_path:

    # Use Biopython's parse function to process individual
    # FASTA records (thus reducing memory footprint)
    for ref in SeqIO.parse(ref_path, 'fasta'):

        # Extract individual parts of the FASTA record
        ref_sequence = str(ref.seq).upper()
        # identifier = record.id
        # description = record.description

        # Example: adapt to extract features you are interested in
        # print('----------------------------------------------------------')
        # print('Processing the record {}:'.format(identifier))
        # print('Its description is: \n{}'.format(description))
        # amount_of_nucleotides = len(sequence)
        # print('Its sequence contains {} nucleotides.'.format(amount_of_nucleotides))

# File path to your FASTA file
path_to_sub = 'parc_blast_align_with_ref.faa'   # Sequences aligned to the reference amino acid sequence

with open(path_to_sub, mode='r') as seq_path:

    # Use Biopython's parse function to process individual
    # FASTA records (thus reducing memory footprint)
    records = []

    for sub in SeqIO.parse(seq_path, 'fasta'):
        sub_sequence = str(sub.seq).upper()
        records.append([sub.id, sub_sequence])

mismatch = []

for _, record in records:
    mismatch.append([])
    for pos, (ref_str, actual_str) in enumerate(zip(ref, record)):
        if ref_str != actual_str:
            if actual_str != "-":
                mismatch[-1].append(f'ParC-{pos + 1}{actual_str}{ref_str}')

with open(f"parC_truncations.csv", "w+") as file:
    file.write('Sequence ID, Sequence, Name\n')

with open(f"no_parC_mutations.csv", "w+") as file:
    file.write(f'Sequence ID, Sequence, Name\n')
    
with open(f"parC_mutations.csv", "w+") as file:
    file.write(f'Sequence ID, Sequence, Mutations, Reference AA, Number of mutations\n')
    
for i, m in enumerate(tqdm(mismatch)):
    # Writing strains with truncated genes to file
    if records[i][1][0] == '-' or len(records[i][1].replace('-','')) < 120:
        with open(f"parC_truncations.csv", "a+") as file:
            name = "parC-truncated"
            file.write(f'{records[i][0]},{records[i][1]},{name}\n')

    # Writing strains with no mutations to file       
    if len(m) == 0:
        with open(f"no_parC_mutations.csv", "a+") as file:
            name = "parC-WT"
            file.write(f'{records[i][0]},{records[i][1]},{name}\n')

    # Writing strains with mutations, including mismatch and mismatch position, to file        
    elif len(m) > 0:
        with open(f"parC_mutations.csv", "a+") as file:
            all_mutations = ';'.join([m_[:-1] for m_ in m])
            all_ref_str = ';'.join([m_[-1] for m_ in m])
            count = all_ref_str.count(';')
            file.write(f'{records[i][0]},{records[i][1]},{all_mutations},{all_ref_str},{count + 1}\n')

