data("AirPassengers")

?AirPassengers
class(AirPassengers)
View(AirPassengers)

ap_df <- data.frame(
  year <- time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
ap_df

ap_df_months <- data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(time(AirPassengers)),
  passengers = as.numeric(AirPassengers)
)
ap_df_months

plot(AirPassengers)


plot(AirPassengers,
     type = 'l',
     main = "Airpassengers Trend Analysis",
     xlab = "Months",
     ylab = "No.of Passengers",
     col = "red"
)
plot(AirPassengers,
     type = 'l',
     lwd = 1.5,
     main = "Airpassengers Trend Analysis",
     xlab = "Months",
     ylab = "No.of Passengers",
     col = "red"
)
points(AirPassengers,
       type = 'o',
       pch = 10,
       col = "blue")
grid()

