function get_mean(survey, type = "level", outfile = "temp.xlsx")
  url = url_mean(survey, type)

  urldownload(url, parser = identity, save_raw = outfile)

  sn = XLSX.readxlsx(outfile)
  sheet = XLSX.sheetnames(sn)[1]

  df = DataFrame(XLSX.readtable(outfile, sheet)...)
  df = ifelse.(df .== "#N/A", missing, df)

  outfile == "temp.xlsx" ? rm(outfile) : nothing

  return df
end
