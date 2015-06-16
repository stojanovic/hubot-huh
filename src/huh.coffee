# Description
#   Random BOFH-style excuses
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - Send random bofh-style excuse
#   excuse - Send random bofh-style excuse
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Slobodan <slobodan@cloudhorizon.com>

excuse = require 'huh'

module.exports = (robot) ->
  robot.respond /excuse/, (res) ->
    res.reply excuse.get()

  robot.hear /excuse/, ->
    res.send excuse.get()
