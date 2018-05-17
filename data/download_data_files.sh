#!/bin/sh

wget -v -P CTD/ http://ctdbase.org/reports/CTD_chem_gene_ixns.tsv.gz
zcat CTD/CTD_chem_gene_ixns.tsv.gz > CTD/CTD_chem_gene_ixns.tsv
# 2017 MeSH that corresponds to the latest MBR raw data snapshot
wget -v -P MeSH/ ftp://nlmpubs.nlm.nih.gov/online/mesh/MESH_FILES/xmlmesh/desc2017.gz
wget -v -P MeSH/ https://mbr.nlm.nih.gov/Download/RawData/2017/MH_items.gz
wget -v -P MGI/ http://www.informatics.jax.org/downloads/reports/MGI_EntrezGene.rpt
wget -v -P MGI/ http://www.informatics.jax.org/downloads/reports/MRK_Reference.rpt
wget -v -P pubmed/ ftp://ftp.ncbi.nlm.nih.gov/gene/DATA/gene2pubmed.gz
wget -v -P ftp://ftp.ncbi.nih.gov/gene/GeneRIF/generifs_basic.gz
wget -v -P Reactome/ https://reactome.org/download/current/reactome.graphdb.tgz
wget -v -P RGD/ ftp://ftp.rgd.mcw.edu/pub/data_release/GENES_BONOBO.txt
wget -v -P RGD/ ftp://ftp.rgd.mcw.edu/pub/data_release/GENES_CHINCHILLA.txt
wget -v -P RGD/ ftp://ftp.rgd.mcw.edu/pub/data_release/GENES_DOG.txt
wget -v -P RGD/ ftp://ftp.rgd.mcw.edu/pub/data_release/GENES_HUMAN.txt
wget -v -P RGD/ ftp://ftp.rgd.mcw.edu/pub/data_release/GENES_MOUSE.txt
wget -v -P RGD/ ftp://ftp.rgd.mcw.edu/pub/data_release/GENES_RAT.txt
wget -v -P RGD/ ftp://ftp.rgd.mcw.edu/pub/data_release/GENES_SQUIRREL.txt
wget -v -P Uniprot/ ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/idmapping/idmapping_selected.tab.gz
