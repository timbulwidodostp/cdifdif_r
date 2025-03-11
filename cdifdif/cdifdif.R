# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Routine estimate difference in differences models presence treatment spillovers cdifdif R Software
# Routine to estimate difference-in-differences models in the presence of treatment spillovers Use cdifdif With (In) R Software
install.packages("remotes")
remotes::install_github("damiancclarke/cdifdif/R-package")
library("cdifdif")
library("broom")
cdifdif = read.csv("https://raw.githubusercontent.com/timbulwidodostp/cdifdif_r/main/cdifdif/cdifdif.csv",sep = ";")
# Estimation
# Routine estimate difference in differences models presence treatment spillovers cdifdif R Software
# Routine to estimate difference-in-differences models in the presence of treatment spillovers Use cdifdif With (In) R Software
cdifdif_1 <- cdifdif(y1 ~ time + treat, data = cdifdif, dist = cdifdif$dist, maxDist = 30, delta = 1, alpha = 0.05, k = 10, verbose = FALSE)
cdifdif_2 <- which.min(cdifdif_1$cvs)
cdifdif <- tidy(cdifdif_1$mods[[cdifdif_2]])
cdifdif
# Routine estimate difference in differences models presence treatment spillovers cdifdif R Software
# Routine to estimate difference-in-differences models in the presence of treatment spillovers Use cdifdif With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished