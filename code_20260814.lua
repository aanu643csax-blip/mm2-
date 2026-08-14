-- 由BaconCheatz工具脱壳解密 | Discord社群链接：.gg/DwREVahzN
-- 获取游戏内置服务获取函数
local _gameGetService2 =game["GetService"]
-- 调用函数获取网络HTTP服务
local _call3 =_gameGetService2(game, "HttpService")
-- 获取当前游戏宇宙ID
local _gameGameId4 =game["GameId"]
-- 获取当前关卡场景ID
local _gamePlaceId5 =game["PlaceId"]
-- 重新获取游戏宇宙ID用于后续编码
local _gameGameId6 =game["GameId"]
-- 将宇宙ID转为字符串格式
local _tostring7 =tostring(_gameGameId6)
-- 获取HTTP服务的URL编码方法
local _UrlEncode8 =_call3["UrlEncode"]
-- 对宇宙ID进行URL编码处理
local _call9 =_UrlEncode8(_call3, _tostring7)
-- 重新获取关卡场景ID
local _gamePlaceId10 =game["PlaceId"]
-- 将关卡ID转为字符串格式
local _tostring11 =tostring(_gamePlaceId10)
-- 再次获取URL编码方法
local _UrlEncode12 =_call3["UrlEncode"]
-- 对关卡ID进行URL编码处理
local _call13 =_UrlEncode12(_call3, _tostring11)
-- 拼接远程接口地址，携带编码后的宇宙ID、关卡ID参数
local _14, _14_2, _14_3 =string.format("%s/bootstrap-info?universeId=%s&placeId=%s", "https://api.honeylua.com", _call9, _call13)
-- 获取游戏网络请求接口
local _gameHttpGet15 =game["HttpGet"]
-- 向远程API发送GET请求，获取基础信息数据
local _call16 =_gameHttpGet15(game, _14)
-- 获取HTTP服务的JSON解析方法
local _JSONDecode17 =_call3["JSONDecode"]
-- 将接口返回的文本解析为JSON数据表
local _call18 =_JSONDecode17(_call3, _call16)
-- 从JSON数据中提取远程脚本标识ID
local _scriptId19 =_call18["scriptId"]
-- 再次调用游戏网络请求函数
local _gameHttpGet20 =game["HttpGet"]
-- 请求远程脚本源码接口，获取完整代码字符串
local _call21 =_gameHttpGet20(game, "https://api.honeylua.com/bootstrap-source")
-- 将获取到的源码字符串编译为可执行函数
local _22 =loadstring(_call21)
-- 执行远程加载进来的外部脚本
local _23 =_22()
