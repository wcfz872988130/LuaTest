-- co=coroutine.create(
-- function ( i )
-- 	print(i)
-- end
-- )

-- coroutine.resume(co,1)
-- print(coroutine.status(co))

-- print("-----------------------")

-- co=coroutine.wrap(
-- 	function(i)
-- 		print(i)
-- 	end
-- )

-- co(1)
-- print("-----------------------")
-- co2=coroutine.create(
-- 	function()
-- 		for i=1,10 do
-- 			print(i)
-- 			if i==3 then
-- 				print(coroutine.status(co2))
-- 				print(coroutine.running())
-- 			end
-- 			coroutine.yield()
-- 		end
-- 	end
-- )

-- coroutine.resume(co2)
-- coroutine.resume(co2)
-- coroutine.resume(co2)

-- print(coroutine.status(co2))
-- print(coroutine.running())

-- function foo(a)
-- 	print("foo 函数输出",a)
-- 	return coroutine.yield(2*a)
-- end

-- co=coroutine.create(
-- 	function(a,b)
-- 		print("第一次协同程序执行输出",a,b)
-- 		local r=foo(a+1)

-- 		print("第二次协同程序执行输出",r)
-- 		local r,s=coroutine.yield(a+b,a-b)

-- 		print("第三次协同程序执行输出",r,s)
-- 		return b,"结束协同程序"
-- 	end
-- )
-- print("main",coroutine.resume(co,1,3))
-- print("-----------------------------")
-- print("main",coroutine.resume(co,"g"))
-- print("-----------------------------")
-- print("main",coroutine.resume(co,"x","y"))


local newProductor

function productor( )
	local i=0
	while i<100 do
		i=i+1
		send(i)
	end
end

function customer()
	while true do
		local i=receiver()
		print(i)
	end
end

function send(a)
	coroutine.yield(a)
end


function receiver()
	local status , value=coroutine.resume(newProductor)
	return value
end

newProductor=coroutine.create(productor)

customer()



























