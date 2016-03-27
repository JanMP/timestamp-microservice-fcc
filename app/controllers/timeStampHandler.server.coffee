timeStampHandler = (req, res) ->
  {str} = req.params
  unless isNaN str
    str = Number str
  date = new Date str
  if isNaN Number date
    result =
      unix : null
      natural : null
  else
    result =
      unix : Number date
      natural : date.toLocaleDateString()
  res.send JSON.stringify result
  
module.exports = timeStampHandler