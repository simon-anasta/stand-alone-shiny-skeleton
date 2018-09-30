# this message is printed on several lines (one per path) to make multiple paths
# easier to spot
message('library paths:\n', paste('... ', .libPaths(), sep='', collapse='\n'))

# path to Chrome portable
chrome.portable = file.path(getwd(),'GoogleChromePortable/GoogleChromePortable.exe')

# getting app to launch with Chrome portable
launch.browser = function(appUrl, browser.path=chrome.portable) {
    message('Browser path: ', browser.path)
    shell(sprintf('%s --app=%s', browser.path, "http://127.0.0.1:8888"), wait=FALSE)
}

# shell(sprintf('%s --app=%s', chrome.portable, "http://127.0.0.1:8888"), wait = FALSE)
# shiny::runApp('./shiny/',port=8888, host="127.0.0.1")


# launch app
shiny::runApp('./shiny/',port=8888, host="127.0.0.1", launch.browser=launch.browser)

