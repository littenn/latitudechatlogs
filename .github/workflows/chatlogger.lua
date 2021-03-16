
local httpser = game:GetService("HttpService")
local webhook = "WEBHOOK HERE."


game.Players.PlayerAdded:Connect(function(player)
	player.Chatted:Connect(function(msg)
		local data = {
			['embeds'] = {{
				color = 800080,
				title = "🛡️ Chatlogger",
				fields = {
					{
						name = '__Username__',
						value = player.Name,
						
					},
					{
						name = '__Message Content__',
						value = msg,
					}
				}
				
			}}
		}
		
		local newdate = httpser:JSONEncode(data)
		httpser:PostAsync(webhook,newdate)
		
	end)
end)

