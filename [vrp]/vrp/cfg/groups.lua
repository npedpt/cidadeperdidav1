local cfg = {}

cfg.groups = {
	["admin"] = {
		"admin.permissao",
		"fix.permissao",
		"dv.permissao",
		"god.permissao",
		"wl.permissao",
		"kick.permissao",
		"ban.permissao",
		"unban.permissao",
		"money.permissao",
		"noclip.permissao",
		"ticket.permissao",
		"tp.permissao",
		"spawncar.permissao",
		"weather.permissao",
		"time.permissao",
		"elevador.permissao",
		"msg.permissao"
	},
	["mod"] = {
		"admin.permissao",
		"fix.permissao",
		"dv.permissao",
		"god.permissao",
		"ticket.permissao",
		"wl.permissao",
		"kick.permissao",
		"ban.permissao",
		"unban.permissao",
		"noclip.permissao",
		"tp.permissao",
		"spawncar.permissao",
		"elevador.permissao",
		"msg.permissao"
	},
	["sup"] = {
		"admin.permissao",
		"ticket.permissao",
		"fix.permissao",
		"dv.permissao",
		"wl.permissao",
		"elevador.permissao",
		"kick.permissao"
	},
	["aprovadorwl"] = {
		"wl.permissao",
		"elevador.permissao"
	},
	---------------------------------------------------
	["COMANDANTE"] = {
		_config = {
			title = "Comandante Geral",
			gtype = "job"
		},
		"policia.permissao",
		"cmdgeral.permissao",
		"policiaheli.permissao",
		"elevador.permissao",
		"polpar.permissao"
	},
	["PaisanaCMD"] = {
		_config = {
			title = "À Paisana CMD Geral",
			gtype = "job"
		},
		"paisanacmdgeral.permissao"
	},
	----------------------------------------------------------
	----------------------------------------------------------
	["PF"] = {
		_config = {
			title = "Policia Federal",
			gtype = "job"
		},
		"policia.permissao",
		"pfederal.permissao",
		"salariopfederal.permissao",
		"elevador.permissao",
		"polpar.permissao"
	},
	["PaisanaPoliciaPF"] = {
		_config = {
			title = "À Paisana PF",
			gtype = "job"
		},
		"paisanapoliciapf.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["PMERJ"] = {
		_config = {
			title = "PMERJ",
			gtype = "job"
		},
		"policia.permissao",
		"pmerj.permissao",
		"salariopmerj.permissao",
		"policiaheli.permissao",
		"elevador.permissao",
		"polpar.permissao"
	},
	["PaisanaPolicia"] = {
		_config = {
			title = "À Paisana PMERJ",
			gtype = "job"
		},
		"paisanapolicia.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["PC"] = {
		_config = {
			title = "Policia Civil",
			gtype = "job"
		},
		"policia.permissao",
		"pcivil.permissao",
		"salariopcivil.permissao",
		"elevador.permissao",
		"polpar.permissao"
	},
	["PaisanaPoliciaPC"] = {
		_config = {
			title = "À Paisana PC",
			gtype = "job"
		},
		"paisanapoliciapc.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["PRF"] = {
		_config = {
			title = "Policia Rodoviária Federal",
			gtype = "job"
		},
		"policia.permissao",
		"prf.permissao",
		"salarioprf.permissao",
		"policiaheli.permissao",
		"elevador.permissao",
		"polpar.permissao"
	},
	["PaisanaPRF"] = {
		_config = {
			title = "À Paisana PRF",
			gtype = "job"
		},
		"paisanaprf.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["RECOM"] = {
		_config = {
			title = "RECOM",
			gtype = "job"
		},
		"policia.permissao",
		"recom.permissao",
		"salariorecom.permissao",
		"elevador.permissao",
		"polpar.permissao"
	},
	["PaisanaRECOM"] = {
		_config = {
			title = "À Paisana RECOM",
			gtype = "job"
		},
		"paisanapoliciarecom.permissao"
	},
	---------------------------------------------------	
	---------------------------------------------------	
	["BOPE"] = {
		_config = {
			title = "BOPE",
			gtype = "job"
		},
		"policia.permissao",
		"bope.permissao",
		"salariobope.permissao",
		"elevador.permissao",
		"polpar.permissao"
	},
	["PaisanaBOPE"] = {
		_config = {
			title = "À Paisana BOPE",
			gtype = "job"
		},
		"paisanapoliciabope.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["Weazel"] = {
		_config = {
			title = "Weazel News",
			gtype = "job"
		},
		"weazel.permissao",
		"elevador.permissao"
	},
	["PaisanaWeazel"] = {
		_config = {
			title = "Paisana Reporter",
			gtype = "job"
		},
		"paisanaweazel.permissao",
		"elevador.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["Milicia"] = {
		_config = {
			title = "Miliciano",
			gtype = "job"
		},
		"milicia.permissao",
		"elevador.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["BPCHQ"] = {
		_config = {
			title = "BPChq",
			gtype = "job"
		},
		"policia.permissao",
		"bpchq.permissao",
		"salariobpchq.permissao",
		"elevador.permissao",
		"polpar.permissao"
	},
	["PaisanaBPCHQ"] = {
		_config = {
			title = "À Paisana BPChq",
			gtype = "job"
		},
		"paisanapoliciabpchq.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
    ["GAM"] = {
		_config = {
			title = "GAM",
			gtype = "job"
		},
		"policia.permissao",
		"gam.permissao",
		"salariogam.permissao",
		"policiaheli.permissao",
		"elevador.permissao",
		"polpar.permissao"
	},
	["PaisanaGAM"] = {
		_config = {
			title = "À Paisana GAM",
			gtype = "job"
		},
		"paisanapoliciagam.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["Enfermeiro"] = {
		_config = {
			title = "Enfermeiro",
			gtype = "job"
		},
		"hporta.permissao",
		"reviver.permissao",
		"enfermeiro.permissao",
		"elevador.permissao",
		"tratamento.permissao",
		"hroupa.permissao",
		"garagemhospital.permissao",
		"polpar.permissao"
	},
	["PaisanaEnfermeiro"] = {
		_config = {
			title = "À Paisana Enfermeiro",
			gtype = "job"
		},
		"paisanaenfermeiro.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["Paramedico"] = {
		_config = {
			title = "Paramédico",
			gtype = "job"
		},
		"paramedico.permissao",
		"reviver.permissao",
		"paramedicosamu.permissao",
		"elevador.permissao",
		"tratamento.permissao",
		"hporta.permissao",
		"hroupa.permissao",
		"garagemhospital.permissao",
		"polpar.permissao"
	},
	["PaisanaParamedico"] = {
		_config = {
			title = "À Paisana Paramédico",
			gtype = "job"
		},
		"paisanaparamedico.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["Medico"] = {
		_config = {
			title = "Médico",
			gtype = "job"
		},
		"medico.permissao",
		"hporta.permissao",
		"reviver.permissao",
		"tratamento.permissao",
		"dv.permissao",
		"elevador.permissao",
		"hroupa.permissao",
		"garagemhospital.permissao",
		"polpar.permissao"
	},
	["PaisanaMedico"] = {
		_config = {
			title = "À Paisana Médico",
			gtype = "job"
		},
		"paisanamedico.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["Diretor"] = {
		_config = {
			title = "Diretor Geral",
			gtype = "job"
		},
		"hporta.permissao",
		"reviver.permissao",
		"diretorgeral.permissao",
		"dv.permissao",
		"tratamento.permissao",
		"elevador.permissao",
		"hroupa.permissao",
		"garagemhospital.permissao",
		"polpar.permissao"
	},
	["PaisanaDiretorGeral"] = {
		_config = {
			title = "Paisana Dir Geral",
			gtype = "job"
		},
		"paisanadiretorgeral.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["LiderMecanico"] = {
		_config = {
			title = "Chefe Mecanico",
			gtype = "job"
		},
		"mecanico.permissao",
		"lidermecanico.permissao",
		"elevador.permissao",
		"nav_mec.permissao",
		"chamadomec.permissao",
		"lsc.use"
	},
	["PaisanaLiderMecanico"] = {
		_config = {
			title = "Paisana Mecanico",
			gtype = "job"
		},
		"paisanalidermecanico.permissao",
		"elevador.permissao",
		"nav_mec.permissao",
		"lsc.use"
	},
	---------------------------------------------------
	---------------------------------------------------
	["Mecanico"] = {
		_config = {
			title = "Bennys Mecanico",
			gtype = "job"
		},
		"mecanico.permissao",
		"elevador.permissao",
		"nav_mec.permissao",
		"chamadomec.permissao",
		"lsc.use"
	},
	["PaisanaMecanico"] = {
		_config = {
			title = "PaisanaMecanico",
			gtype = "job"
		},
		"paisanamecanico.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["LLosMecanico"] = {
		_config = {
			title = "Los Chefe Mecanico",
			gtype = "job"
		},
		"lossantos.permissao",
		"liderlossantos.permissao",
		"elevador.permissao",
		"nav_mec.permissao",
		"chamadomec.permissao",
		"lsc.use"
	},
	["PLLosMecanico"] = {
		_config = {
			title = "Paisana Los Chefe Mec",
			gtype = "job"
		},
		"lossantos.permissao",
		"paisanaliderlossantos.permissao",
		"elevador.permissao",
		"nav_mec.permissao",
		"chamadomec.permissao",
		"lsc.use"
	},
	---------------------------------------------------
	---------------------------------------------------
	["LosMecanico"] = {
		_config = {
			title = "Los Mecanico",
			gtype = "job"
		},
		"lossantos.permissao",
		"elevador.permissao",
		"nav_mec.permissao",
		"chamadomec.permissao",
		"lsc.use"
	},
	["PaisanaLosMecanico"] = {
		_config = {
			title = "Los Mecanico",
			gtype = "job"
		},
		"paisanalossantos.permissao",
		"elevador.permissao",
		"nav_mec.permissao",
		"chamadomec.permissao",
		"lsc.use"
	},
	---------------------------------------------------
	---------------------------------------------------
	["Advogado"] = {
		_config = {
			title = "Advogado",
			gtype = "job"
		},
		"advogado.permissao",
		"elevador.permissao"
	},
	["Juiz"] = {
		_config = {
			title = "Juiz",
			gtype = "job"
		},
		"juiz.permissao",
		"elevador.permissao"
	},
	["Civil"] = {
		_config = {
			title = "Civil",
			gtype = "job"
		},
		"civil.permissao",
		"elevador.permissao"
	},
	["LiderTaxista"] = {
		_config = {
			title = "Líder Taxista",
			gtype = "job"
		},
		"taxista.permissao",
		"elevador.permissao",
		"lavar.dinheiro",
		"lidertaxista.permissao"
	},
	["PaisanaLiderTaxista"] = {
		_config = {
			title = "Paisana L Taxista",
			gtype = "job"
		},
		"paisanaltaxista.permissao",
		"elevador.permissao",
		"liderpaisanataxista.permissao"
	},
	["Taxista"] = {
		_config = {
			title = "Taxista",
			gtype = "job"
		},
		"taxista.permissao",
		"elevador.permissao"
	},
	["PaisanaTaxista"] = {
		_config = {
			title = "PaisanaTaxista",
			gtype = "job",
		},
		"paisanataxista.permissao"
	},
	["Bronze"] = {
		_config = {
			title = "Bronze"
		},
		"bronze.permissao",
		"elevador.permissao",
		"carrosvip.permissao"
	},
	["Prata"] = {
		_config = {
			title = "Prata"
		},
		"prata.permissao",
		"elevador.permissao",
		"carrosvip.permissao"
	},
	["Ouro"] = {
		_config = {
			title = "Ouro"
		},
		"ouro.permissao",
		"mochila.permissao",
		"elevador.permissao",
		"carrosvip.permissao"
	},
	["Platina"] = {
		_config = {
			title = "Platina"
		},
		"platina.permissao",
		"mochila.permissao",
		"elevador.permissao",
		"carrosvip.permissao"
	},
	["Mochila"] = {
		_config = {
			title = "Mochila"
		},
		"mochila.permissao"
	},
	["LIDERMotoclub"] = {
		_config = {
			title = "Líder Motoclub",
			gtype = "job"
		},
		"motoclub.permissao",
		"lidermc.permissao",
		"elevador.permissao",
		"entrada.permissao"
	},
	["Motoclub"] = {
		_config = {
			title = "Motoclub",
			gtype = "job"
		},
		"motoclub.permissao",
		"elevador.permissao",
		"entrada.permissao"
	},
	["LIDERTCP"] = {
		_config = {
			title = "Chefe T.C.P",
			gtype = "job"
		},
		"amarelos.permissao",
		"tcp.permissao",
		"elevador.permissao",
		"lidertcp.permissao",
		"entrada.permissao"
	},
	["TCP"] = {
		_config = {
			title = "T.C.P",
			gtype = "job"
		},
		"amarelos.permissao",
		"tcp.permissao",
		"elevador.permissao",
		"entrada.permissao"
	},
	["LIDERCV"] = {
		_config = {
			title = "Chefe C.V",
			gtype = "job"
		},
		"verdes.permissao",
		"cv.permissao",
		"elevador.permissao",
		"lidercv.permissao",
		"entrada.permissao"
	},
	["CV"] = {
		_config = {
			title = "C.V",
			gtype = "job"
		},
		"verdes.permissao",
		"cv.permissao",
		"elevador.permissao",
		"entrada.permissao"
	},
	["LIDERADA"] = {
		_config = {
			title = "A.D.A",
			gtype = "job"
		},
		"roxos.permissao",
		"ada.permissao",
		"liderada.permissao",
		"elevador.permissao",
		"entrada.permissao"
	},
	["ADA"] = {
		_config = {
			title = "A.D.A",
			gtype = "job"
		},
		"roxos.permissao",
		"ada.permissao",
		"elevador.permissao",
		"entrada.permissao"
	},
	["LIDERMafia"] = {
		_config = {
			title = "Líder Mafia",
			gtype = "job"
		},
		"mafia.permissao",
		"lidermafia.permissao",
		"elevador.permissao",
		"entrada.permissao"
	},
	["Mafia"] = {
		_config = {
			title = "Mafia",
			gtype = "job"
		},
		"mafia.permissao",
		"elevador.permissao",
		"entrada.permissao"
	},
	["LIDERYakuza"] = {
		_config = {
			title = "Líder Yakuza",
			gtype = "job"
		},
		"lavar.dinheiro",
		"yakuza.permissao",
		"lideryakuza.permissao",
		"elevador.permissao",
		"entrada.permissao"
	},
	["Yakuza"] = {
		_config = {
			title = "Yakuza",
			gtype = "job"
		},
		"lavar.dinheiro",
		"yakuza.permissao",
		"elevador.permissao",
		"entrada.permissao"
	},
	["LiderISIS"] = {
		_config = {
			title = "LIder ISIS",
			gtype = "job"
		},
		"isis.permissao",
		"elevador.permissao",
		"liderisis.permissao"
	},
	["ISIS"] = {
		_config = {
			title = "ISIS",
			gtype = "job"
		},
		"isis.permissao",
		"elevador.permissao"
	},
	["VendedorStand"] = {
		_config = {
			title = "ISIS",
			gtype = "job"
		},
		"stand.permissao",
		"elevador.permissao"
	},
}

cfg.users = {
	[1] = { "admin" },
	[2] = { "admin" },
	[3] = { "admin" },
}

cfg.selectors = {}

return cfg