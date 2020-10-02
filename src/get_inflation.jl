function get_inflation(outfile = "temp.xlsx")
  url = "https://www.philadelphiafed.org/-/media/research-and-data/real-time-center/survey-of-professional-forecasters/historical-data/inflation.xlsx?la=en"

  urldownload(url, parser = identity, save_raw = outfile)
  df = DataFrame(XLSX.readtable(outfile, "INFLATION")...)
  df = ifelse.(df .== "#N/A", missing, df)

  outfile == "temp.xlsx" ? rm(outfile) : nothing

  return df
end
