URL_BASE = "https://www.philadelphiafed.org/-/media/research-and-data/real-time-center/survey-of-professional-forecasters/data-files/files/"

function url_individual(survey)
  return URL_BASE * "individual_" * survey * ".xlsx"
end

function url_mean(survey, type)
  if type == "level"
    what = "level"
  elseif type == "growth"
    what = "growth"
  elseif type in ["pct", "pct_chg"]
    what = "pct_chg"
  elseif type in ["avg_chg", "ave", "ave_chg"]
    what = "ave_chg"
  else
    error(type, " not implemented yet")
  end
  url = URL_BASE * "mean_" * survey * "_" * what * ".xlsx"
  return url
end

function url_median(survey, type)
  if type == "level"
    what = "level"
  elseif type == "pct"
    what = "pct_chg"
  elseif type == "ave"
    what = "ave_chg"
  else
    error(type, " not implemented yet")
  end
  url = URL_BASE * "median_" * survey * "_" * what * ".xlsx"
  return url
end

function url_dispersion(survey)
  return URL_BASE * "dispersion_" * survey * ".xlsx"
end
