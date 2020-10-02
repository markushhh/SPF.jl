
function get_individual(survey, outfile = "temp.xlsx")
	url = url_individual(survey)
	urldownload(url, parser = identity, save_raw = outfile)

	df = DataFrame(XLSX.readtable(outfile, survey)...)
	df = ifelse.(df .== "#N/A", missing, df)
	df.ID = convert.(Int, df.ID)

	outfile == "temp.xlsx" ? rm(outfile) : nothing
	return df
end
