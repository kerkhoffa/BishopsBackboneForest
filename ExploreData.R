# read in data

BBF<-read.csv("./data/BBFPlotMaster2011.csv")

# plot stem map
require(ggplot2)
require(RColorBrewer)

ggplot(BBF, aes(x=Plot.X, y=Plot.Y)) +
  geom_point() +
  geom_bin2d(alpha=0.8) +
  stat_bin_2d(binwidth=10, sum(Basal.Area.2))
  #scale_fill_brewer(palette="BuGn")
