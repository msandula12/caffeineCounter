root = exports ? this
root.coffee = (input) ->
	input = document.getElementsByName("cups")
	for i in input
		if i.checked
			caffeine = i.value * 95
			caffeineMsg = "You've had " + caffeine + " milligrams of caffeine today!"
			document.getElementById("caffeine").innerHTML = caffeineMsg
			limit = 400 - caffeine
			overTheLimit = limit * -1
			if limit > 0
				underTheLimitMsg = "You're still " + limit + " milligrams of caffeine under the daily recommended dose. Have another cup!"
				document.getElementById("limit").innerHTML = underTheLimitMsg
			else
				overTheLimitMsg = "That's " + overTheLimit + " milligrams of caffeine over the daily recommended dose. That's enough for today!"
				document.getElementById("limit").innerHTML = overTheLimitMsg