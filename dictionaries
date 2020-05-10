# Script reads all files and directories in current directory and creates a Dictionary ("name"=>filename_length")
files = readdir(pwd())

info = Dict{String,Integer}()
for (n,f) in enumerate(files)
	info["$(f)"] = length(f)
end


println(info)
