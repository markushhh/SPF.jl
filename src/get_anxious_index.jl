function get_anxious_index(outfile = "temp.xlsx")
  url = "https://www.philadelphiafed.org/-/media/research-and-data/real-time-center/survey-of-professional-forecasters/anxious-index/anxious_index_chart.xlsx?la=en"

  urldownload(url, parser = identity, save_raw = outfile)
  df = DataFrame(XLSX.readtable(outfile, "Data")...)
  outfile == "temp.xlsx" ? rm(outfile) : nothing

  return df
end
