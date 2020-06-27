##First we aggregate the data in

totalEmission <- aggregate(Emissions ~ year, NEIdata, sum)
totalEmission

##Plotting the total Emissions over time using a base plotting

barplot(
  (totalEmission$Emissions)/10^6,
  names.arg=totalEmission$year,
  xlab="Year",
  ylab="PM2.5 Emissions (10^6 Tons)",
  main="Total PM2.5 Emissions From All US Sources"
)
