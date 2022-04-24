#1. Cleaning Data
summary(PC17)
summary(PC18)
summary(PKG17)
summary(PKG18)
summary(PKJ17)
summary(PKJ18)
summary(PPM17)
summary(PPM18)
summary(PS17)
summary(PS18)



#2. Formatting Data
#Change Date Format
#PKM CaKung Jakarta Timur
#2017
PC17$Date <- format(as.Date(PC17$Date, format = "%d/%m/%Y"), "%Y-%m-%d")
class(PC17$Date)
PC17$Date = as.Date(PC17$Date)
class(PC17$Date)
class(PC17$DOB)
PC17$DOB <- format(as.Date(PC17$DOB, format = "%d/%m/%Y"), "%Y-%m-%d")
PC17$DOB = as.Date(PC17$DOB)

#2018
PC18$Date <- format(as.Date(PC18$Date, format = "%Y-%m-%d"))
class(PC18$Date)
PC18$Date = as.Date(PC18$Date)
class(PC18$Date)

#PKM Kelapa Gading Jakarta Utara 
#2017
PKG17$Date <- format(as.Date(PKG17$Date, format = "%Y-%m-%d"))
class(PKG17$Date)
PKG17$Date = as.Date(PKG17$Date)
class(PKG17$Date)

#2018
PKG18$Date <- format(as.Date(PKG18$Date, format = "%Y-%m-%d"))
class(PKG18$Date)
PKG18$Date = as.Date(PKG18$Date)
class(PKG18$Date)

#PKM Kebon Jeruk Jakarta Barat
#2017
PKJ17$Date <- format(as.Date(PKJ17$Date, format = "%d/%m/%Y"), "%Y-%m-%d")
class(PKJ17$Date)
PKJ17$Date = as.Date(PKJ17$Date)
class(PKJ17$Date)
class(PKJ17$DOB)
PKJ17$DOB <- format(as.Date(PKJ17$DOB, format = "%d/%m/%Y"), "%Y-%m-%d")
PKJ17$DOB = as.Date(PKJ17$DOB)
class(PKJ17$DOB)

#2018
PKJ18$Date <- format(as.Date(PKJ18$Date, format = "%d/%m/%Y"),"%Y-%m-%d")
class(PKJ18$Date)
PKJ18$Date = as.Date(PKJ18$Date)
class(PKJ18$Date)
PKJ18$DOB <- format(as.Date(PKJ18$DOB, format = "%d/%m/%Y"), "%Y-%m-%d")
PKJ18$DOB = as.Date(PKJ18$DOB)
class(PKJ18$DOB)

#PKM Pasar Minggu Jakarta Selatan
#2017
PPM17$Date <- format(as.Date(PPM17$Date, format = "%d/%m/%Y"), "%Y-%m-%d")
class(PKJ17$Date)
PPM17$Date = as.Date(PPM17$Date)
class(PPM17$Date)
class(PPM17$DOB)
PPM17$DOB <- format(as.Date(PPM17$DOB, format = "%d/%m/%Y"), "%Y-%m-%d")
PPM17$DOB = as.Date(PPM17$DOB)
class(PPM17$DOB)

#2018
PPM18$Date <- format(as.Date(PPM18$Date, format = "%d/%m/%Y"), "%Y-%m-%d")
class(PKJ18$Date)
PPM18$Date = as.Date(PPM18$Date)
class(PPM18$Date)
class(PPM18$DOB)
PPM18$DOB <- format(as.Date(PPM18$DOB, format = "%d/%m/%Y"), "%Y-%m-%d")
PPM18$DOB = as.Date(PPM18$DOB)
class(PPM18$DOB)

#PKM Senen Jakarta Pusat
#2017
PS17$Date <- format(as.Date(PS17$Date, format = "%d/%m/%Y"), "%Y-%m-%d")
class(PS17$Date)
PS17$Date = as.Date(PS17$Date)
class(PS17$Date)
class(PS17$DOB)
PS17$DOB <- format(as.Date(PS17$DOB, format = "%d/%m/%Y"), "%Y-%m-%d")
PS17$DOB = as.Date(PS17$DOB)
class(PS17$DOB)

#Coding Age 2017
DGP17$CAge <- 0
DGP17$CAge[DGP17$Age<5.1] <- 1
DGP17$CAge[DGP17$Age>= 5.0 ] <- 2
DGP17$CAge[DGP17$Age>= 18.0 ] <- 3
DGP17$CAge[DGP17$Age>= 65.0] <- 4

#Coding Sex 2017
DGP17$CSex <- 0
DGP17$CSex[DGP17$Sex=="P"] <- 1
DGP17$CSex[DGP17$Sex=="L"] <- 2

#Coding PKM 2017
DGP17$CPKM = 0
DGP17$CPKM[DGP17$PKM=="Cakung"] = 1
DGP17$CPKM[DGP17$PKM=="Kebon Jeruk"] = 2
DGP17$CPKM[DGP17$PKM=="Kelapa Gading"] = 3
DGP17$CPKM[DGP17$PKM=="Pasar Minggu"] = 4
DGP17$CPKM[DGP17$PKM=="Senen"] = 5

#2018
PS18$Date <- format(as.Date(PS18$Date, format = "%d/%m/%Y"), "%Y-%m-%d")
class(PS18$Date)
PS18$Date = as.Date(PS18$Date)
class(PS18$Date)
class(PS18$DOB)
PS18$DOB <- format(as.Date(PS18$DOB, format = "%d/%m/%Y"), "%Y-%m-%d")
PS18$DOB = as.Date(PS18$DOB)
class(PS18$DOB)

#Coding Age 2018
DGP18$CAge <- 0
DGP18$CAge[DGP18$Age<5.1] <- 1
DGP18$CAge[DGP18$Age>= 5.0 ] <- 2
DGP18$CAge[DGP18$Age>= 18.0 ] <- 3
DGP18$CAge[DGP18$Age>= 65.0] <- 4

#Coding Sex 2018
DGP18$CSex <- 0
DGP18$CSex[DGP17$Sex=="P"] <- 1
DGP18$CSex[DGP17$Sex=="L"] <- 2

#Coding PKM 2018
DGP18$CPKM = 0
DGP18$CPKM[DGP18$PKM=="Cakung"] = 1
DGP18$CPKM[DGP18$PKM=="Kebon Jeruk"] = 2
DGP18$CPKM[DGP18$PKM=="Kelapa Gading"] = 3
DGP18$CPKM[DGP18$PKM=="Pasar Minggu"] = 4
DGP18$CPKM[DGP18$PKM=="Senen"] = 5

#3. Binding Row Data
DGP17 <- rbind(PC17, PKJ17,  PKG17, PPM17, PS17)
DGP18 <- rbind(PC18, PKJ18,  PKG18, PPM18, PS18)
DGP <- rbind(DGP17, DGP18)

#4. Formatting data
#Make new Column CAge
#Conversion Character to Numeric
DGP$Age<-as.numeric(DGP$Age)
class(DGP$Age)

#Recoding
DGP$CAge <- 0
DGP$CAge[DGP$Age<5.1] <- 1
DGP$CAge[DGP$Age>= 5.0 ] <- 2
DGP$CAge[DGP$Age>= 18.0 ] <- 3
DGP$CAge[DGP$Age>= 65.0] <- 4

#Formating to factor
DGP$CAge<-as.factor(DGP$CAge)
class(DGP$CAge)
table(DGP$CAge)
summary(DGP$CAge)

#Make new Column CSex
class(DGP$Sex)
DGP$CSex <- 0
DGP$CSex[DGP$Sex=="P"] <- 1
DGP$CSex[DGP$Sex=="L"] <- 2

#Format As Factor
DGP$CSex<-as.factor(DGP$CSex)
class(DGP$CSex)
table(DGP$CSex)
summary(DGP$CSex)

#Make new Column CPKM
DGP$CPKM = 0
DGP$CPKM[DGP$PKM=="Cakung"] = 1
DGP$CPKM[DGP$PKM=="Kebon Jeruk"] = 2
DGP$CPKM[DGP$PKM=="Kelapa Gading"] = 3
DGP$CPKM[DGP$PKM=="Pasar Minggu"] = 4
DGP$CPKM[DGP$PKM=="Senen"] = 5

#Format As Factor
DGP$CPKM<-as.factor(DGP$CPKM)
class(DGP$CPKM)
table(DGP$CPKM)
summary(DGP$CPKM)

#stat data
summary(DGP)
DGP$Date <- format(DGP$Date, format = "%Y/%m/%d")
DGP$DOB <- format(DGP$DOB, format = "%Y/%m/%d")
sd(DGP$SAT)

#n total  
summary(DGP$CAge)
summary(DGP$CSex)
summary(DGP$CPKM)

#n 2017
summary(DGP17$CAge)
table(DGP17$CAge)
summary(DGP17$CSex)
table(DGP17$CSex)
summary(DGP17$CPKM)
table(DGP17$CPKM)

#n 2018
summary(DGP18$CAge)
table(DGP18$CAge)
summary(DGP18$CSex)
table(DGP18$CSex)
summary(DGP18$CPKM)
table(DGP18$CPKM)

#Combine Date and CPKM
DGP$DC <- paste(DGP$Date, DGP$CPKM)

#Join Full Join
DUPF <- full_join(DU1, DGP, by = "DC")


