function get_microdata(outfile = "SPFmicrodata.xlsx")
  url = "https://www.philadelphiafed.org/-/media/research-and-data/real-time-center/survey-of-professional-forecasters/historical-data/spfmicrodata.xlsx?la=en"
  urldownload(url, parser = identity, save_raw = outfile)
  return nothing
end
