Config = {}

Config.RestrictedChannels = 5 -- channels that are encrypted (EMS, Fire and police can be included there) if we give eg 10, channels from 1 - 10 will be encrypted
Config.enableCmd = true --  /radio command should be active or not (if not you have to carry the item "radio") true / false

Config.messages = {

  ['not_on_radio'] = 'No momento, não está em nenhuma estação',
  ['on_radio'] = 'Está atualmente nessa estação de rádio: <b>',
  ['joined_to_radio'] = 'Entrou na estação: <b>',
  ['restricted_channel_error'] = 'Não pode participar de canais criptografados!',
  ['you_on_radio'] = 'Já está na estação: <b>',
  ['you_leave'] = 'Saiu da estação: <b>'

}
