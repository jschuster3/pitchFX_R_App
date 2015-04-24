library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  require(VGAM)
  output$summaryR <- renderPrint({ 
    predict(mod.pfx3, data.frame(start_speed=input$speed,
                                pfx_x=c(input$hmov,input$hmov,input$hmov,input$hmov,input$hmov,input$hmov,input$hmov,input$hmov,input$hmov),
                                pfx_z=c(input$vmov,input$vmov,input$vmov,input$vmov,input$vmov,input$vmov,input$vmov,input$vmov,input$vmov),
                                px=c(-0.459594423,0.003531711,0.462094809,-0.458214021,0.006584475,0.465529713,-0.454992894, 0.010848467,0.468019182),
                                pz=c(3.067349,3.053637,3.045527,2.492985,2.484429,2.475680,1.906814,1.901359,1.899994),
                                balls=c(input$balls,input$balls,input$balls,input$balls,input$balls,input$balls,input$balls,input$balls,input$balls),
                                strikes=c(input$strikes,input$strikes,input$strikes,input$strikes,input$strikes,input$strikes,input$strikes,input$strikes,input$strikes),
                                HR_13_Rate=c(input$HR_Rate,input$HR_Rate,input$HR_Rate,input$HR_Rate,input$HR_Rate,input$HR_Rate,input$HR_Rate,input$HR_Rate,input$HR_Rate),
                                K_13_Rate=c(input$SO_Rate,input$SO_Rate,input$SO_Rate,input$SO_Rate,input$SO_Rate,input$SO_Rate,input$SO_Rate,input$SO_Rate,input$SO_Rate),
                                BB_13_Rate=c(input$BB_Rate,input$BB_Rate,input$BB_Rate,input$BB_Rate,input$BB_Rate,input$BB_Rate,input$BB_Rate,input$BB_Rate,input$BB_Rate),
                                BatterStands=c('R','R','R','R','R','R','R','R','R')),
            type="response")
  })
  
  output$summaryL <- renderPrint({ 
    predict(mod.pfx3, data.frame(start_speed=input$speed,
                                 pfx_x=c(input$hmov,input$hmov,input$hmov,input$hmov,input$hmov,input$hmov,input$hmov,input$hmov,input$hmov),
                                 pfx_z=c(input$vmov,input$vmov,input$vmov,input$vmov,input$vmov,input$vmov,input$vmov,input$vmov,input$vmov),
                                 px=c(-0.473925876,-0.009724063,0.453124385,-0.472936561,-0.011609981,0.454462353,-0.471791818,-0.013375393, 0.452305095),
                                 pz=c(3.009223,3.024239,3.028313,2.462434,2.462940,2.470533,1.906965,1.893271,1.895448),
                                 balls=c(input$balls,input$balls,input$balls,input$balls,input$balls,input$balls,input$balls,input$balls,input$balls),
                                 strikes=c(input$strikes,input$strikes,input$strikes,input$strikes,input$strikes,input$strikes,input$strikes,input$strikes,input$strikes),
                                 HR_13_Rate=c(input$HR_Rate,input$HR_Rate,input$HR_Rate,input$HR_Rate,input$HR_Rate,input$HR_Rate,input$HR_Rate,input$HR_Rate,input$HR_Rate),
                                 K_13_Rate=c(input$SO_Rate,input$SO_Rate,input$SO_Rate,input$SO_Rate,input$SO_Rate,input$SO_Rate,input$SO_Rate,input$SO_Rate,input$SO_Rate),
                                 BB_13_Rate=c(input$BB_Rate,input$BB_Rate,input$BB_Rate,input$BB_Rate,input$BB_Rate,input$BB_Rate,input$BB_Rate,input$BB_Rate,input$BB_Rate),
                                 BatterStands=c('L','L','L','L','L','L','L','L','L')),
            type="response")
  })
})