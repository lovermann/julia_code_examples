# Dictionary used in examples
pricelist = Dict("Toyota" => 20000, "Honda" => 45000, "Ford" => 15000)

# Script reads all files and directories in current directory and creates a Dictionary ("name"=>filename_length")
files = readdir(pwd())

info = Dict{String,Integer}()
for (n,f) in enumerate(files)
	info["$(f)"] = length(f)
end
println(info)

# Show only values (without keys)
values(pricelist) 	# will return 20000,45000,15000

# Search in dictionary by key
info["Toyota"]		# will return 20000	

# Catching a mistake (creating function to check, if key exists
function GetPrice(car_name)
    if haskey(Pricelist,car_name)
        return Pricelist[car_name]
    else
        println("This car is not in Price list")
    end
end

# using function GetPrice:
GetPrice("Ford") 	# will return 15000
GetPrice("Mazda")	# will return 'Thic car is not in Price list'

# search maximum and minimum value
maximum(Pricelist)	# will return 45000
minimum(Pricelist)	# will return 15000

# merging dictionaries
pricelist1 = ("book" => 20, "pencil" => 5, "calculator" => 15)
pricelist2 = ("table" => 50, "cup" => 7, "mouse" => 14)
pricelist3 = merge(pricelist1,pricelist2)

# adding an item to a dictionary
push!(Pricelist, "Volvo" => 45000)





