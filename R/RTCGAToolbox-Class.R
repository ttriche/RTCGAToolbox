#' An S4 class to store data from CGA platforms
#'
#' @slot Filename Platform name
#' @slot DataMatrix A data frame that stores the CGH data.
setClass("FirehoseCGHArray", representation(Filename = "character", DataMatrix = "data.frame"))

#' An S4 class to store data from methylation platforms
#'
#' @slot Filename Platform name
#' @slot DataMatrix A data frame that stores the methylation data.
setClass("FirehoseMethylationArray", representation(Filename = "character", DataMatrix = "data.frame"))

#' An S4 class to store data from array (mRNA, miRNA etc.) platforms
#'
#' @slot Filename Platform name
#' @slot DataMatrix A data matrix that stores the expression data.
setClass("FirehosemRNAArray", representation(Filename = "character", DataMatrix = "matrix"))

#' An S4 class to store processed copy number data. (Data processed by using GISTIC2 algorithm)
#'
#' @slot Dataset Cohort name
#' @slot AllByGene A data frame that stores continuous copy number
#' @slot ThresholedByGene A data frame for discrete copy number data
setClass("FirehoseGISTIC", representation(Dataset = "character", AllByGene = "data.frame",ThresholedByGene="data.frame"))

#' An S4 class to store main data object from clinent function.
#'
#' @slot Dataset A cohort name
#' @slot Clinical Clinical data frame
#' @slot RNASeqGene Gene level expression data matrix from RNAseq
#' @slot RNASeq2GeneNorm Gene level expression data matrix from RNAseq (RSEM)
#' @slot miRNASeqGene miRNA expression data from matrix smallRNAseq
#' @slot CNASNP A data frame to store somatic copy number alterations from SNP array platform
#' @slot CNVSNP A data frame to store germline copy number variants from SNP array platform
#' @slot CNAseq A data frame to store somatic copy number alterations from sequencing platform
#' @slot CNACGH A list that stores \code{FirehoseCGHArray} object for somatic copy number alterations from CGH platform
#' @slot Methylation A list that stores \code{FirehoseMethylationArray} object for methylation data
#' @slot mRNAArray A list that stores \code{FirehosemRNAArray} object for gene expression data from microarray
#' @slot miRNAArray A list that stores \code{FirehosemRNAArray} object for miRNA expression data from microarray
#' @slot RPPAArray A list that stores \code{FirehosemRNAArray} object for RPPA data
#' @slot Mutations A data frame for mutation infromation from sequencing data
#' @slot GISTIC A \code{FirehoseGISTIC} object to store processed copy number data
setClass("FirehoseData", representation(Dataset = "character", Clinical = "data.frame", RNASeqGene = "matrix",
                                        RNASeq2GeneNorm="matrix",miRNASeqGene="matrix",CNASNP="data.frame",
                                        CNVSNP="data.frame",CNAseq="data.frame",CNACGH="list",Methylation="list",
                                        mRNAArray="list",miRNAArray="list",RPPAArray="list",Mutations="data.frame",
                                        GISTIC="FirehoseGISTIC"))

#' An S4 class to store differential gene expression results
#'
#' @slot Dataset Dataset name
#' @slot Toptable Results data frame
setClass("DGEResult", representation(Dataset = "character", Toptable = "data.frame"))

#' An S4 class to store correlations between gene expression level and copy number data
#'
#' @slot Dataset A cohort name
#' @slot Correlations Results data frame
setClass("CorResult", representation(Dataset = "character", Correlations = "data.frame"))