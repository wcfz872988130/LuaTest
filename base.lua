-- print(type("Hello World"))

-- tbtest={
-- 	[1]=1,
-- 	[2]=2,
-- 	[3]=3,
-- 	[4]=4,
-- }

-- for key,value in ipairs(tbtest) do
-- 	print(value)
-- end

-- tt={[-1]=1,
-- [1]=2,
-- [2]=3,}
-- print(#(tt))

tf={[6]=6,
[1]=1,
[2]=2,
["a"]=4,
["b"]=5,}
for v in pairs(tf) do 
	print(v)
end

-- table1={[1]=1,
-- [10000]=2,}
-- local count=0
-- for i=1,table.maxn(table1) do
-- 	count=count+1
-- 	print(tbtest[i])
-- end
-- print(count)
