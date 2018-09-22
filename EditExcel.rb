require 'roo'

xlxs = Roo::Excelx.new('./sample.xlsx')
#xlxs.sheets.each{ | sheet |
#  puts xlxs.sheet(sheet).row(1)
#  puts xlxs.sheet(sheet).row(1)
#}

xlxs.each_row_streaming(offset: 2) do | e |
  puts e.inspect
end

