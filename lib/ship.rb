class Ship

def initialize
	@makeup = [0]
	@floating = true
end

def floating?
	@floating
end

def sunk?
	if @makeup.inject{|sum,x| sum + x } == 1
		@floating = false
		return true
	else
		@floating = true
		return false
	end
end

def hit
	@makeup = [1]
	@floating = false
	return "Hit"
end

def status
	if floating?
		"All fine"
	else
		"Sunk"
	end
end

end
