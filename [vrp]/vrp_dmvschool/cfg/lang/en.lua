--[[
    FiveM Scripts
    Copyright C 2018  Sighmir

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

local lang = {
  dmv = {
    police = {
	  check_desc = "Checar licença do jogador mais proximo.",
	  take_desc = "Tirar Carta do jogador mais proximo.",
	  ask = "Pedindo Carta...",
	  request = "Deseja mostrar sua licença ?",
	  request_hide = "Fechar Carta.",
	  confirm = "Tem certeza que deseja remover esta licença?",
	  license = "<em>Nome: </em>{1}<br /><em>Sobrenome: </em>{2}<br /><em>Idade: </em>{3}<br /><em>Passaporte: </em>{4}<br /><em>Telefone: </em>{5}<br /><em>Data: </em>{6}",
	  no_license = "~r~Este jogador não possui licença!",
	  took_license = "~g~A licença foi removida.",
	  license_taken = "~r~Sua licença foi removida!"
    },
  },
  client = {
    locked = "~r~Trancado",
	failed = "Falhou\nAcumulou {1} ~r~Pontos de Erro",
	passed = "Passou\nAcumulou {1} ~r~Pontos de Erro",
	proceed = "~b~Passou, agora pode prosseguir para o teste de condução",
	try_again = "~r~Falhou no teste, pode tentar novamente outro dia",
	no_license = "~r~Está dirigindo sem uma licença",
	interact = "Pressione ~INPUT_DETONATE~ para interagir com o ~y~NPC",
	welcome = "~b~Bem Vindo à ~h~Escola",
	menu = {
	  obtain = "Obter uma Carta",
	  intro = "Introdução    GRATUITO",
	  theory = "Teste teórico    € 200",
	  practical = "Teste pratico    € 500",
	  mreturn = "Voltar",
	  mclose = "Fechar",
	},
	control = {
	  enabled = "~y~Controle de Velocidade: ~g~ativado\n~s~Velocidade Máxima {1}kmh",
	  disabled = "~y~Controle de Velocidade: ~r~desativado",
	  help = "Ajuste sua velocidade máxima com ~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~",
	  speed = "Velocidade máxima ajustada para {1}kmh",
	  cant_leave = "Não pode deixar o veículo durante o teste",
	  not_dirving = "Precisa estar dirigindo para realizar esta ação",
	},
    pnotify = {
      speeding = "Está acelerando! <b style='color:#B22222'>Diminua!</b><br /><br />Está dirigindo em uma zona de <b style='color:#DAA520'>{1} km/h</b> !",
	  damaged = "O veículo foi <b style='color:#B22222'>danificado!</b><br /><br />Cuidado!",
	  area = "Area: ~y~{1}\n~s~Velocidade Máxima: ~y~{2} km/h\n~s~Pontos de Erro: ~y~{3}/{4}",
	},
  },
}

return lang