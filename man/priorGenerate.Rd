\name{priorGenerate}
\alias{priorGenerate}
\title{Generate prior for ChIP-seq alignment.}
\usage{
priorGenerate(object, chipFile, maxHistone = 6, outfileLoc = "./")
}
\arguments{
\item{object}{The S4 class object generated by \code{priorProcess} or \code{priorHistone_multi} function.}

\item{chipFile}{ChIP-seq input files, in fastq format or sam format to
  save time if it is already aligned and includes multi-mapping
  reads. If aligned BAM file with multi-mapping reads are ready,
  readAllocate function can be utilized to tranform the format say into
  tagAlign or bed.}

\item{maxHistone}{Maximum number of histone ChIP-seq datasets used in
the model. Default value is 6 and we recommend the maximum number of
histone ChIP-seq datasets to be under or equal to 6.}

\item{outfileLoc}{Directory to store processed output files.}
}

\value{
  A new "Prior" object containing new information which includes:
  
\item{prior}{Location of prior files created. }
\item{outfileLoc}{Directory where processed files are (given as an argument).}
\item{histoneGrpL}{Histone data included in the model after variable
  selection. Provided no histone data, histoneGrpL will not be created.}
\item{chipName}{Name of ChIP-seq dataset(s).}

}

\description{
\code{priorGenerate} generates prior file from ChIP-seq data which will
be used in CSEM alignment under \code{--prior} option.
}
\details{
This function generates as many prior files as ChIP-seq dataset(s) given
as the argument to be used in CSEM software with prior option.\cr

Aligned sam file will go through filtering process to remove
duplicates. By default, samtools will be used to remove
duplicates. PICARD will be employed if user provide the PICARD jar path.

If the users have already aligned ChIP-seq fastq formatted file, to save
time, they can provide the aligned sam formatted file as long as they
have included the multi-mapping reads when they did the alignment.

\code{plot()}, \code{summary()}, \code{names()} and \code{print()}
methods can be used to see the information contained in "Prior"
object. To obtain the ChIP-seq alignment information from bowtie, use \code{summary()}.
}
\examples{
\dontrun{
object = priorGenerate(object, chipFile, maxHistone, outfileLoc="./")
}
}
\author{
Xin Zeng, M. Constanza Rojo-Alfaro, Ye Zheng

}
\keyword{methods}
\keyword{models}

