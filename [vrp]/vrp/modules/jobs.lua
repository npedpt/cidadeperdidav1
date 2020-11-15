RegisterServerEvent("trydeleteobj")
AddEventHandler("trydeleteobj",function(index)
	TriggerClientEvent("syncdeleteobj",-1,index)
end)
----------------------------------------------------------------------------------------------------------------------------------------
ATM Blips for the Gruppe6 Job 
----------------------------------------------------------------------------------------------------------------------------------------
	{ 119.10,-883.70,31.12,162,25,"Caixa Eletronico",0.4 },
	{ -1315.80,-834.76,16.96,162,25,"Caixa Eletronico",0.4 },
	{ 285.44,143.38,104.17,162,25,"Caixa Eletronico",0.4 },
	{ 1138.23,-468.89,66.73,162,25,"Caixa Eletronico",0.4 },
	{ 1077.70,-776.54,58.24,162,25,"Caixa Eletronico",0.4 },
	{ -710.03,-818.90,23.72,162,25,"Caixa Eletronico",0.4 },
	{ -821.63,-1081.89,11.13,162,25,"Caixa Eletronico",0.4 },
	{ -1409.75,-100.44,52.38,162,25,"Caixa Eletronico",0.4 },
	{ -846.29,-341.28,38.68,162,25,"Caixa Eletronico",0.4 },
	{ -2072.36,-317.23,13.31,162,25,"Caixa Eletronico",0.4 },
	{ -526.64,-1222.97,18.45,162,25,"Caixa Eletronico",0.4 },
	{ -254.41,-692.46,33.60,162,25,"Caixa Eletronico",0.4 },
	{ -203.69,-861.47,30.26,162,25,"Caixa Eletronico",0.4 },
	{ -303.30,-829.81,32.41,162,25,"Caixa Eletronico",0.4 },
	{ -301.72,-830.03,32.41,162,25,"Caixa Eletronico",0.4 },
	{ 146.05,-1035.03,29.34,162,25,"Caixa Eletronico",0.4 },
	{ 147.66,-1035.67,29.34,162,25,"Caixa Eletronico",0.4 },
	{ -258.80,-723.40,33.46,162,25,"Caixa Eletronico",0.4 },
	{ -256.15,-716.00,33.51,162,25,"Caixa Eletronico",0.4 },
	{ -537.85,-854.37,29.28,162,25,"Caixa Eletronico",0.4 },
	
-----
--Discord
------
AddEventHandler("chatMessage", function(s, n, m)
	local message = string.lower(m)
	if message == "/discord" then
		CancelEvent() -- Hide the message from user chat
		TriggerClientEvent("chatMessage", s, "DISCORD", {204, 51, 255}, "Junte-se ao nosso Discord em: https://discord.me/cidadeperdidarp")
	end
end)