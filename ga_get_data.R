require("RGA")

# Client ID and Client Secret
client.id <- "<MY CLIENT ID HERE>"
client.secret <- "<MY CLIENT SECRET HERE>"

# Authorize your app on the web browser that opens
authorize(client.id = client.id, client.secret = client.secret)

# Table ID
tableID <- "ga:XXXXXXX"

# Query period (YYYY-MM-DD)
date.start <- "2015-01-01"
date.end <- "2015-12-31"

# Get the data
data.bymonth <- get_ga(tableID,
                       start.date = date.start,
                       end.date = date.end,
                       dimensions = "ga:month,ga:pageTitle,ga:deviceCategory,ga:operatingSystem",
                       metrics = "ga:sessions,ga:sessionDuration,ga:avgSessionDuration,ga:users,ga:pageviews,ga:pageviewsPerSession,ga:timeOnPage,ga:entrances,ga:exits",
                       max.results = NULL,
                       sort = "ga:month")

