install.packages("NLP");
install.packages("tm");
install.packages("slam");
library("NLP");
library("tm");
library("slam");

file<-"C:/Users/cc/Downloads/student1.pdf";
Rpdf<-readPDF(control=list(text="-layout"));
getwd();

file.exists(Sys.which(c("pdfinfo", "pdftotext")));

corpus<-VCorpus(URISource(file),readerControl=list(reader=Rpdf));
array<-as.data.frame(content(content(corpus)[[1]]));
colnames(array)<-"lines";

# write out text datafile#
write.table(array, "C:/Users/cc/Downloads/mydata1.txt", sep="\t",col.names=F, row.names=F)

file<-"C:/Users/cc/Downloads/student2.pdf";
Rpdf<-readPDF(control=list(text="-layout"));
corpus<-VCorpus(URISource(file),readerControl=list(reader=Rpdf));
array<-as.data.frame(content(content(corpus)[[1]]));
colnames(array)<-"lines";

# write out text datafile#
write.table(array, "C:/Users/cc/Downloads/mydata2.txt", sep="\t", col.names=F, row.names=F)
