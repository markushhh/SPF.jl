module SPF

using HTTP
using XLSX
using UrlDownload
using DataFrames
using Dates

export
	get_additional_cpie10,
	get_anxious_index,
	get_dispersion,
	get_individual,
	get_inflation,
	get_mean,
	get_median,
	get_microdata,
	get_prob

include("url.jl")
include("get_additional_cpie10.jl")
include("get_anxious_index.jl")
include("get_dispersion.jl")
include("get_individual.jl")
include("get_inflation.jl")
include("get_mean.jl")
include("get_median.jl")
include("get_microdata.jl")
include("get_prob.jl")

#TODO Quarter(1) is introduced after julia v1.5.2 - change in future versions
#TODO add checks wether survey exists
#TODO write proper documentation

end
