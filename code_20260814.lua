-- 脱混淆：BaconCheatz | Discord群 .gg/DwREVahzN
local 获取服务 = game["GetService"]
local Http服务 = 获取服务(game, "HttpService")

local 游戏总ID = game["GameId"]
local 地图ID = game["PlaceId"]
local 游戏总ID副本 = game["GameId"]
local ID转文本 = tostring(游戏总ID副本)
local URL编码 = Http服务["UrlEncode"]
local 编码后宇宙ID = URL编码(Http服务, ID转文本)

local 地图ID副本 = game["PlaceId"]
local 地图ID转文本 = tostring(地图ID副本)
local URL编码2 = Http服务["UrlEncode"]
local 编码后地图ID = URL编码2(Http服务, 地图ID转文本)

-- 拼接API请求地址
local 请求地址 = string.format("%s/bootstrap-info?universeId=%s&placeId=%s", "https://api.honeylua.com", 编码后宇宙ID, 编码后地图ID)
local 网络GET = game["HttpGet"]
local 接口返回内容 = 网络GET(game, 请求地址)

local JSON解析 = Http服务["JSONDecode"]
local 解析后数据 = JSON解析(Http服务, 接口返回内容)
local 远程脚本标识 = 解析后数据["scriptId"]

-- 拉取远程源码并加载执行
local 网络GET2 = game["HttpGet"]
local 远程源码文本 = 网络GET2(game, "https://api.honeylua.com/bootstrap-source")
local 代码加载器 = loadstring(远程源码文本)
代码加载器()
