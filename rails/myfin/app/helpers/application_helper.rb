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

end
