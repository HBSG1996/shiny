library(shiny)

ui<-fluidPage(
  titlePanel(title="标题",windowTitle = "第一个shiny"),
  fluidRow(
    column(
      width=4,
      offset = 0,
      h3("Buttons"),
      actionButton(inputId="action",label = "Action"),
      br(),
      br()
      ),
    column(
      width=4,
      offset = 0,
      checkboxGroupInput(
        inputId="checkgroup",
        label = h3("Checkbox group"),
        choices = list("choice 1"=1,"choice 2"=2,"choice 3"=3),
        selected = 1
        )
    ),
    column(
      width=4,
      offset = 0,
      h3("Single checkbox"),
      checkboxInput(inputId="checkbox",label = "check A",value = TRUE)
    )
  ),
  br(),
  fluidRow(
    column(
      width=4,
      offset = 0,
      h3("Buttons"),
      selectInput(
        inputId="var",
        label = "choose a variable",
        choices = c("Precent White","Present Black"),
        selected = "Precent White"
        ),
      sliderInput(
        inputId="range",
        label = "Range of interest",
        min=0,
        max=100,
        value = c(0,100)
      )
    ),
    column(
      width=4,
      offset = 0,
      checkboxGroupInput(
        inputId="checkgroup",
        label = h3("Checkbox group"),
        choices = list("choice 1"=1,"choice 2"=2,"choice 3"=3),
        selected = 1
      )
    ),
    column(
      width=4,
      offset = 0,
      h3("Single checkbox"),
      checkboxInput(inputId="checkbox",label = "check A",value = TRUE)
    )
  ),
  mainPanel(
    textOutput("text1")
  )
  # sidebarLayout(position=c("left"),fluid=TRUE,
  #   sidebarPanel(
  #     width=4,
  #     selectInput(inputId="obs",label = "选择栏",choices=c("1","2","3"),selected='1'),
  #     selectInput(inputId="obs",label = "选择栏",choices=c("1","2","3"),selected='1'),
  #     selectInput(inputId="obs",label = "选择栏",choices=c("1","2","3"),selected='1'),
  #     selectInput(inputId="obs",label = "选择栏",choices=c("1","2","3"),selected='1'),
  #     selectInput(inputId="obs",label = "选择栏",choices=c("1","2","3"),selected='1'),
  #     selectInput(inputId="obs",label = "选择栏",choices=c("1","2","3"),selected='1'),
  #     selectInput(inputId="obs",label = "选择栏",choices=c("1","2","3"),selected='1'),
  #     selectInput(inputId="obs",label = "选择栏",choices=c("1","2","3"),selected='1'),
  #     selectInput(inputId="obs",label = "选择栏",choices=c("1","2","3"),selected='1')
  #     ),
  #   
  #   mainPanel(
  #     img(src='tu.jpg')
  #   )
  # )
)