require 'roo'

xlxs = Roo::Excelx.new(ARGV[0])

first_row = 2
last_row  = xlxs.last_row()

dict_title = {}
for i in first_row..last_row do
  pid = xlxs.cell(i, "A").sub(/^c/, '')
  title = xlxs.cell(i, "C")
  description = xlxs.cell(i, "E")
  dict_title[pid] = [title, description]
end

f_title = File.open('pla_title.txt', 'w')
f_description = File.open('pla_description.txt', 'w')

dict_title.each do | pid, value |
  f_title.puts(sprintf("'%d' => '%s'", pid, value[0]))
  f_description.puts(sprintf("'%d' => '%s'", pid, value[1]))
end


