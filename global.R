
library(shinydashboard)
library(shiny)
library(shinyjs)
library(RODBC)
library(lubridate)


setwd('//wdmpsvr01/RedirectedFolders/clemence.burnichon/My Documents/code_repo/dashboard_template')
bank <- read.csv('bank-full.csv', header = T , sep = ';', stringsAsFactors = F)



