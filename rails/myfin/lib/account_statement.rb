class AccountStatement
  def self.import
    lines = []
    trans = []
    i = 0
    File.open('c:/temp/statement.txt').each_line do |line|
      lines << line
      m = /^ (\d\d\.\d\d\.) (.{31})/.match(line)
      trans << {line: i, operation: m[2].strip, date: Date.strptime(m[1]+'2012', '%d.%m.%Y')} if m
      i += 1
    end
    puts trans
  end
end


AccountStatement.import

