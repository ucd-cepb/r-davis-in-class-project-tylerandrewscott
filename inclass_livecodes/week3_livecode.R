library(ngrokR)
#library(livecode)
library(rstudioapi)

port = 4040
s <- livecode::serve_file(port = port,open_browser = F)

url = s$url
command = paste0("ngrok http ",url)
terminal_id = terminalExecute(command)
terminalExecute('ngrok http 4040')


hostname = 'www.rdaviscode.com'
username = 'rdavis'
password = 'geoducks'
port = 4040
id <- ngrokR::livestreamStart(domain = hostname,
                        username = username,
                        password = password,
                        port = port)
livestreamStop(id = id)

#adding -bind-tls=true makes https, but for some reason people just then get a blank white screen
command = paste0("ngrok http --domain=",domain," --basic-auth='",username,"':'",password,"' ",url)
terminal_id = terminalExecute(command)
id = terminalExecute('R --version',show = F)
return(id)

