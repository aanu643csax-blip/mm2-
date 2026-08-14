-- Deobfuscated by BaconCheatz | .gg/DwREVahzN

local _gameGetService2 =game["GetService"]
local _call3 =_gameGetService2(game, "HttpService")
local _gameGameId4 =game["GameId"]
local _gamePlaceId5 =game["PlaceId"]
local _gameGameId6 =game["GameId"]
local _tostring7 =tostring(_gameGameId6)
local _UrlEncode8 =_call3["UrlEncode"]
local _call9 =_UrlEncode8(_call3, _tostring7)
local _gamePlaceId10 =game["PlaceId"]
local _tostring11 =tostring(_gamePlaceId10)
local _UrlEncode12 =_call3["UrlEncode"]
local _call13 =_UrlEncode12(_call3, _tostring11)
local _14, _14_2, _14_3 =string.format("%s/bootstrap-info?universeId=%s&placeId=%s", "https://api.honeylua.com", _call9, _call13)
local _gameHttpGet15 =game["HttpGet"]
local _call16 =_gameHttpGet15(game, _14)
local _JSONDecode17 =_call3["JSONDecode"]
local _call18 =_JSONDecode17(_call3, _call16)
local _scriptId19 =_call18["scriptId"]
local _gameHttpGet20 =game["HttpGet"]
local _call21 =_gameHttpGet20(game, "https://api.honeylua.com/bootstrap-source")
local _22 =loadstring(_call21)
local _23 =_22()