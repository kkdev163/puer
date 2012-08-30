fs = require "fs"
# local utils 
pad = (num) ->
  if num<10 then "0"+num else num

typeOf = (obj) ->
  if obj is null or obj is undefined then String obj 
  else Object::toString.call(obj).slice 8, -1

# direct send static resource if exisits
send = (path, res, type = "text/html") ->
  res.setHeader "Content-Type", type
  stream = fs.createReadStream path, encoding : 'utf8'
  stream.pipe res

module.exports =
  getLocalIP: () ->
  formatDate : (d) ->
    d = new Date parseInt date if typeOf(date) is not "date" 
    "#{d.getFullYear()}-#{pad d.getMonth()+1}-#{pad d.getDate()}  #{pad d.getHours()}:#{pad d.getMinutes()}:#{pad d.getSeconds()}"
  send: send,
  typeOf: typeOf