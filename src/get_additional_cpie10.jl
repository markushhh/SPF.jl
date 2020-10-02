
function get_additional_cpie10(outfile = "temp.xlsx")
  url = "https://www.philadelphiafed.org/-/media/research-and-data/real-time-center/survey-of-professional-forecasters/historical-data/additional-cpie10.xlsx?la=en"
	urldownload(url, parser = identity, save_raw = outfile)
  df = DataFrame(XLSX.readtable(outfile, "Sheet1")...)
  outfile == "temp.xlsx" ? rm(outfile) : nothing

  return df
end
