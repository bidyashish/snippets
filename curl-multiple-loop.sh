# Curl command to do multiple curl request in command line or by bash file

#This below example will for 100 times curl requst URL

#paste this code in git bash in window or terminal in Mac or Linux

# Paste any code after "do" to repeat action

for ((i = 1; i < 100; i++)); do curl -v "https://github.com"; done
