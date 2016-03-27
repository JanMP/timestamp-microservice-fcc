platform = require "platform"

requestHeaderParser = (req, res) ->
  info = platform.parse req.headers['user-agent']
  result =
    ip : req.ip
    lang : req.headers["accept-language"]
    os : "#{info.os.family} #{info.os.version}"
  res.send JSON.stringify result
  
module.exports = requestHeaderParser