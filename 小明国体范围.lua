do
	if type(getrlyunyz) ~= 'function' then
		gg.alert('请使用RLGG执行')
		os.exit()
		return
	end

	local info = {
	    example_version = '1.0.3',
		name = '小明国体范围',
		appid = '94807',
		appkey = 'P122x4yVn27bY2cb',
		rc4key = 'uGm34f90VVN14o3V',
		version = '1.0',
		mi_type = '3'
	}

	local rlyunyz = getrlyunyz(info)
	local ret = rlyunyz.start()
	if not ret or not isTable(ret) or ret.sign ~= 'd7de49afd3c64f80f503968be076b2bc' then
		os.exit()
		return
	end
end
draw.remove()
draw.text('', 177,295)
draw.setColor('#FF00FFFF')
draw.setSize(48)draw.setStyle('描边并填充')

draw.text('小明特别版', 177,255)
draw.setColor('#FF00FFFF')
draw.setSize(48)draw.setStyle('描边并填充')
string.toMusic("")
function Main()
  SN = gg.choice({
  "选择进程",
  "范围",
  "退出脚本"
 }, 2018, "欢迎使用小明国体范围，已完美适配最新版本\n主频道@xm_kjc")
  if SN == 1 then
    a()
  end
  if SN == 2 then
   b()
  end
  if SN == 3 then
  Exit()
  end
  XGCK = -1
end



function a()
gg.setProcessX()
gg.toast("开启成功")
end
function b()
	function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end

function HaoGe(Nc,Type,Search,Write) gg.clearResults() gg.setRanges(Nc) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tPUBGMH={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tPUBGMH[#tPUBGMH+1]={} tPUBGMH[#tPUBGMH].address=v.address+offset tPUBGMH[#tPUBGMH].flags=v.flags end tPUBGMH=gg.getValues(tPUBGMH) for i,v in ipairs(tPUBGMH)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) else return false end else return false end end

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,752,423,507,886,342,144", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("4,752,423,507,916,455,936", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,106,509,824", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("1,138,425,856", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1111) 
gg.editAll("15", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(100) 
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
Name = "成功"
local Nc = 16384
local Lx = 16
local Sz1 = {{-1.42781105e28, 0}}
local Sz2 = {{0, 0}}
HaoGe(Nc, Lx, Sz1, Sz2)
qmnb =
{
{["memory"] = 32},
{["name"] = "不减伤头部范围开启成功"},
{["value"] = 4740038608910024704, ["type"] = 32},
{["lv"] = 4752423507886342144, ["offset"] = 4, ["type"] = 32},
{["lv"] = 1106509824, ["offset"] = 8, ["type"] = 32},
}
qmxg =
{
{["value"] = 700, ["offset"] = 4, ["type"] = 16},
{["value"] = 700, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
qmnb =
{
{["memory"] = 32},
{["name"] = "不减伤头部范围开启成功"},
{["value"] = 4719772412750681353, ["type"] = 32},
{["lv"] = 4742290408720039936, ["offset"] = 4, ["type"] = 32},
}
qmxg =
{
{["value"] = -460, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
qmnb =
{
{["memory"] = 32},
{["name"] = "不减伤头部范围开启成功"},
{["value"] = -4417614866316724128, ["type"] = 32},
{["lv"] = 4724276012378061487, ["offset"] = 4, ["type"] = 32},
}
qmxg =
{
{["value"] = -560, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
qmnb =
{
{["memory"] = 32},
{["name"] = "开启成功"},
{["value"] = -4416487068034336677, ["type"] = 32},
{["lv"] = 4724276012378324073, ["offset"] = 4, ["type"] = 32},
}
qmxg =
{
{["value"] = -660, ["offset"] = 8, ["type"] = 16},
{["value"] = -660, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("开启成功")
end

function Exit()
print("已退出")
os.exit()
end
cs = ""



while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end