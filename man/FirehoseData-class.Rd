% Generated by roxygen2 (4.0.2): do not edit by hand
\docType{class}
\name{FirehoseData-class}
\alias{FirehoseData-class}
\title{An S4 class to store main data object from clinent function.}
\description{
An S4 class to store main data object from clinent function.
}
\section{Slots}{

\describe{
\item{\code{Dataset}}{A cohort name}

\item{\code{Clinical}}{Clinical data frame}

\item{\code{RNASeqGene}}{Gene level expression data matrix from RNAseq}

\item{\code{RNASeq2GeneNorm}}{Gene level expression data matrix from RNAseq (RSEM)}

\item{\code{miRNASeqGene}}{miRNA expression data from matrix smallRNAseq}

\item{\code{CNASNP}}{A data frame to store somatic copy number alterations from SNP array platform}

\item{\code{CNVSNP}}{A data frame to store germline copy number variants from SNP array platform}

\item{\code{CNAseq}}{A data frame to store somatic copy number alterations from sequencing platform}

\item{\code{CNACGH}}{A list that stores \code{FirehoseCGHArray} object for somatic copy number alterations from CGH platform}

\item{\code{Methylation}}{A list that stores \code{FirehoseMethylationArray} object for methylation data}

\item{\code{mRNAArray}}{A list that stores \code{FirehosemRNAArray} object for gene expression data from microarray}

\item{\code{miRNAArray}}{A list that stores \code{FirehosemRNAArray} object for miRNA expression data from microarray}

\item{\code{RPPAArray}}{A list that stores \code{FirehosemRNAArray} object for RPPA data}

\item{\code{Mutations}}{A data frame for mutation infromation from sequencing data}

\item{\code{GISTIC}}{A \code{FirehoseGISTIC} object to store processed copy number data}
}}

