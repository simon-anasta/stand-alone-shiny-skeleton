# stand-alone-shiny-skeleton

Shiny apps can be deployed as stand-alone desktop applications for users without any R familiarity. The method is described by Lee Pang (https://www.r-bloggers.com/deploying-desktop-apps-with-r/) and also by xiaodai (http://blog.analytixware.com/2014/03/packaging-your-shiny-app-as-windows.html).

The approach uses Chrome-portable and R-portable along with some supporting files to create a setup that the user experiences as a standard "double-click to launch" application.

I had some difficulty when I attempted to follow the instructions of Lee Pang and xiaodai. R kept waiting from Chrome to finish running before it would launch the shiny app. This repositry provides the skeleton of my deployable app. (I took the working app and deleted Chrome-portable and R-portable - because they are large - and my shiny app files - because they are product specific.)

The steps required to use this skeleton are as follows:
1. download and copy Chrome-portable into its folder
2. download and copy R-portable into its folder
3. set R-portable's default library location (see references for instructions)
4. download all the required libraries into the R-portable library (see reference for instructions)
5. copy shiny app files into its folder
6. edit the server function of the shiny app to ensure the R session closes (see reference for instructions)
7. testing
8. deploy

