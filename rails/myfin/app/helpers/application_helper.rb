module ApplicationHelper

  def month_ends(d_from, d_to=Date.current)
    d = d_from.end_of_month
    ret_arr = [] << d
    while d < d_to
      d >>= 1
      ret_arr << d
    end
    ret_arr
  end

  def year_ends(d_from, d_to=Date.current)
    d = d_from.end_of_year
    ret_arr = [] << d
    while d < d_to
      d >>= 12
      ret_arr << d
    end
    ret_arr
  end

  def months_in_year(months, year)
    sel = months.select {|d| d <= year.end_of_year && d >= year.beginning_of_year}
    sel.count
  end

end
