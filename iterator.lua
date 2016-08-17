array={"Beijing","Shanghai","Hangzhou","Wuhan"}

function elementIterator( collection )
	local index = 1
	local count = #collection
	for i=index , count ,1 do
		print(collection[i])
	end
end


function elementIterator2(collection)
	local index=0
	local count=#collection
	return function()
		if index<count then
			index=index+1
			return collection[index]
		end
	end
end

--elementIterator(array)
print(elementIterator2(array)())
print(elementIterator2(array)())
print(elementIterator2(array)())

print("-----------")
ele=elementIterator2(array)
for i=1,3,1 do
	print(ele())
end

for element in elementIterator2(array)
do
	print(element)
end