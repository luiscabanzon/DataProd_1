f_day_save <- function(pac_pri , cig_pac , cig_day) (pac_pri / cig_pac) * cig_day
f_total_save <- function(pac_pri , cig_pac , cig_day , period) (pac_pri / cig_pac) * cig_day * as.numeric(period)
f_no_cig <- function(cig_day , period) cig_day * as.numeric(period)
f_life <- function(cig_day , period) cig_day * as.numeric(period) * (11/(60*24)/365)

shinyServer(
        function(input, output) {        
                output$day_save <- renderPrint({f_day_save(input$pac_pri, input$cig_pac ,input$cig_day)})
                output$days <- renderPrint({input$period})
                output$total_save <- renderPrint({f_total_save(input$pac_pri, input$cig_pac, input$cig_day, input$period)})
                output$no_cig <- renderPrint({f_no_cig(input$cig_day , input$period)})
                output$life <- renderPrint({f_life(input$cig_day , input$period)})        
        })