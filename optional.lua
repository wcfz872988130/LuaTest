w={x=0,y=0,width=300,height=200,title="Lua",background="blue",border=true}

function Window(options)
	if type(options.title)~="string" then
		error("no title")
	elseif type(options.width)~="number" then
		error("no width")
	elseif type(options.height)~="number" then
		error("no height")
	end
end


network={
	{name="grauna",IP="210.26.30.34"},
	{name="arraial",IP="210.26.30.23"},
	{name="lua",IP="210.26.23.12"},
	{name="derain",IP="210.26.23.20"},
	name="wangchao",
	age=24
}

local print_r

 print_r = function(t)
	for k,v in pairs(t) do
		if(type(v)=="table") then
			print("{")
			print_r(v)
			print("}")
		elseif(type(v)=="string")	then			
			print(k.."=".."“"..v.."“")
		else
			print(k.."="..v)
		end
	end
end

print_r(network)

-- names={"Peter","Paul","Mary"}
-- for k,v in ipairs(names) do
-- 	print(k,v)
-- end
-- grades={Mary=10,Paul=7,Peter=8}
-- table.sort(names,function (n1,n2)
-- 	return grades[n1]>grades[n2]
-- end)

-- for k,v in ipairs(names) do
-- 	print(k,v)
-- end

-- oldSin=math.sin
-- math.sin=function(x)
-- 	return oldSin(x*math.pi/180)
-- end

-- print(math.sin(90))

--local fact

-- fact=function(n)
-- 	if n==0 then
-- 		return 1
-- 	else 
-- 		return n*fact(n-1)
-- 	end
-- end

-- print(fact(6))


-- ff=function(n)
-- 	if n==0 then
-- 		return 1
-- 	else
-- 		return n*ff(n-1)
-- 	end
-- end
-- print(ff(5))

-- table.sort(network,function (a,b)
-- 	return a.name>b.name
-- 	end)

-- a={"one","two","three"}
-- for i,v in ipairs(a) do
-- 	print(i,v)
-- end

-- pp=function(t)
-- 	local index=0
-- 	local count=#t
-- 	return function()
-- 		if index<count then
-- 			index=index+1
-- 			return t[index]
-- 		end
-- 	end
-- end


-- for element in pp(a) do
-- 	print(element)
-- end



































