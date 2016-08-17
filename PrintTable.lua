Set={}

Set.mt={}

Set.prototype={x=0,y=0,width=100,height=100,}

function Set.new(t)
	local set={}
	setmetatable(set,Set.mt)
	for _,l in ipairs(t) do set[l]=true end
	return set
end

Set.mt.__index=Set.prototype
-- Set.mt.__index=function(table,key)
-- 	return Set.prototype[key]
-- end

Set.mt.__newindex=function(t,k,v)
	Set.prototype[k]=v
end



function Set.union(a,b)
	local res=Set.new{}
	if getmetatable(a)~=Set.mt or getmetatable(b)~=Set.mt then
		error("attempt to 'add' a set with a non-set value",2)
	end
	for k in pairs(a) do res[k]=true end
	for k in pairs(b) do res[k]=true end
	return res
end

function Set.intersection(a,b)
	local res=Set.new{}
	for k in pairs(a) do
		res[k]=b[k]
	end
	return res
end

function Set.tostring(set)
	local s="{"
	local sep=""
	for e in pairs(set) do
		s=s..sep..e
		sep=","
	end
	return s.."}"
end

function Set.print(s)
	print(Set.tostring(s))
end


s1=Set.new{10,20,30,50}
s2=Set.new{30,1}
print(getmetatable(s1))
print(getmetatable(s2))

--Set.mt.__add=Set.union
Set.mt.__add=Set.intersection

s3=s1+s2
Set.print(s3)

Set.mt.__le=function(a,b)
	for k,v in pairs(a) do
		if not b[k] then
			return false
		end
	end
	return true
end

Set.mt.__lt=function(a,b)
	return a<=b and not(b<=a)
end

Set.mt.__eq=function(a,b)
	return a<=b and b<=a
end

sa=Set.new{2,4}

for k,v in pairs(sa) do
	print(k,v)
end

sa[5]='Hello'
for k,v in pairs(sa) do
	print(k,v)
end

sb=Set.new{4,10,2}
print(sa<=sb)
print(sa<sb)
print(sa>=sb)
print(sa["width"])
print(sa[5])

for n in pairs(_G) do print(n) end






















