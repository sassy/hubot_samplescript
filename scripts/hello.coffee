# Description:
#   Temporary Implements

module.exports = (robot) ->
    robot.hear /Hello/i, (msg) ->
        msg.reply "Hello!"

