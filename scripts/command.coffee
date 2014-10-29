# Description:
#   sample run Unix command 

module.exports = (robot) ->
    robot.respond /ls/i, (msg) ->
        @exec = require('child_process').exec
        @exec "ls", (error, stdout, stderr) ->
            msg.send error
            msg.send stdout
            msg.send stderr


    robot.respond /man (.*)$/i, (msg) ->
        env = msg.match[1]
        @exec = require('child_process').exec
        @exec "man #{env}", (error, stdout, stderr) ->
            msg.send stdout
            msg.send stderr
