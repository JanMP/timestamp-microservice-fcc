// Generated by CoffeeScript 1.10.0
(function() {
  var platform, requestHeaderParser;

  platform = require("platform");

  requestHeaderParser = function(req, res) {
    var info, result;
    info = platform.parse(req.headers['user-agent']);
    result = {
      ip: req.ip,
      lang: req.headers["accept-language"],
      os: info.os.family + " " + info.os.version
    };
    return res.send(JSON.stringify(result));
  };

  module.exports = requestHeaderParser;

}).call(this);