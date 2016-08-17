--list={next=list,value=v} --链表

list = {}
function list.new()
	return {first=0,last=-1}
end

function list.pushleft(list,value)
	local first=list.first-1
	list.first=first
	list[first]=value
end

function list.pushright(list,value)
	local last=list.last+1
	list.last=last
	list[last]=value
end


function list.Popleft(list,value)
	local first=list.first
	if first>list.last then
		error("list is empty")
	end
	local value=list[first]
	list[first]=nil
	list.first=first+1
	return value
end

function list.Popright(list,value)
	local last=list.last
	if list.first>last then
		error("list is empty")
	end
	local value=list[last]
	list[last]=nil
	list.last=last-1
	return value
end