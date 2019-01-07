from mg_toolkit.metadata import OriginalMetadata
ebi = input("Enter EBI accession: ")
ebisave = ebi + "_metadata.csv"
om = OriginalMetadata(ebi)
om.save_to_csv(om.fetch_metadata(), ebisave)
