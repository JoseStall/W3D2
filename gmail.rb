require 'gmail'
require 'dotenv'
Dotenv.load('gmail.env')

gmail = Gmail.connect!(ENV['username'],ENV['password'])



gmail.deliver do
  to "ampuero.pierre@gmail.com"
  subject "Having fun in Puerto Rico!"
  text_part do
    body "Text of plaintext message."
  end
  html_part do
    content_type 'text/html; charset=UTF-8'
    body "<p>Text of <em>html</em> message.</p>"
  end
 
end

