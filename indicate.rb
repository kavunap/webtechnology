# Launch CGI program to receive and return data
require 'cgi'
cgi = CGI.new

# After receiving data, return a response in HTML format
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # Fetch received data cgi ['input'] and assign to local variable
  # Retrieve information from the marker 'input'
  get = cgi['input']

  # Return the response in HTML
  "<html>
    <body><b>
      <p>The received string is as follows</p>
      <p>String：#{get}</p></b>
      <button> <a href='/test' >back</button>
    </body>
  </html>"
}