shinyUI(
        pageWithSidebar(
        headerPanel(
                "Want to be richer (and healthier)? Then stop smoking! *"
                ),
        # INPUT PANEL
        sidebarPanel(
                h5("Make a quick estimation about how much money you can save."),
                numericInput('cig_day', 'How many cigerettes do you smoke daily?', 0, min = 0, max = 100, step = 1),
                numericInput('cig_pac', 'How many cigarettes you per packet?', 0, min = 0, max = 100, step = 1),
                numericInput('pac_pri', 'How much is each packet?', 0, min = 0, max = 100000, step = 0.05),
                selectInput('period', 'Select a period:',
                            c('2 weeks' = 14,
                              '3 months' = 90,
                              '1 year' = 365,
                              '5 years' = 1825,
                              '10 years' = 3650)
                            ),
                submitButton('Submit')
        ),
        # OUTPUT PANEL
        mainPanel(
               h4('Savings per day:'),
                verbatimTextOutput('day_save'),
               h4('So during these days:'),
                verbatimTextOutput('days'),
               h4('You will have saved:'),
                verbatimTextOutput('total_save'),
               h4('And by avoiding smoking all these cigarretes:'),
                verbatimTextOutput('no_cig'),
               h4('You will have increased your life expectancy (in years): **'),
                verbatimTextOutput('life'),
               h5("* If you don't' smoke, try to apply this to any other vice (Starbucks, McDonnald's...)."),
               h5("** The life expectancy improvement is just a rough estimation, according to a publication from April 2000 by the University of California, Berkeley."), a( "(Reference found here)", href = "http://www.medicalnewstoday.com/releases/9703.php")
               )))

