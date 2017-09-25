
htmlTemplate(
  filename = "../../templates/main.html",
  header = htmlTemplate(
    filename = "../../templates/header.html",
    logo = "logo.png",
    title = app$ui$title
  ),
  input = app$ui$input,
  output = plotOutput("chart1_1")
)






