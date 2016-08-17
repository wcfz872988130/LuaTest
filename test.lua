--Lua会自动在string和number之间进行类型转换
print("10"+1)
print("10+1")
print("-5.3e-10"*"2")
--print("hello"+1)

line="1000"
n=tonumber(line)
print(n)

print(tostring(10)=="10")

w={x=0,y=0,label="console"}
--x={sin(0),sin(1),sin(2)}
for k in pairs(w)do
	print(k)
end


print(w[1])
print(w["x"])