library(shinythemes)
library(Hmisc)

load("external/wind_ice.RData",envir=.GlobalEnv)

cuts <- rev(unique(w.beaufort.GFDL$Cut))
varlevels <- as.character(unique(w.beaufort.GFDL$Var))
years <- unique(w.beaufort.GFDL$Year)
decades <- years[years%%10==0]
dec.lab <- paste0(decades,"s")
seas <- capitalize(unique(sapply(strsplit(ls(pattern="^w.*.c$",envir=.GlobalEnv),"\\."),"[[",2)))
models <- unique(sapply(strsplit(ls(pattern="^w.*.c$",envir=.GlobalEnv),"\\."),"[[",3))
dpm <- c(31,28,31,30,31,30,31,31,30,31,30,31)
