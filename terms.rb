require 'csv'

count = ARGV[0].to_i
lines = File.read('terms.txt').lines.map(&:chomp)

CSV.open("term.csv", "wb") do |csv|
  csv << ('A'..'X').to_a
  count.times do
    lines.shuffle!
    csv << lines[0, 24]
  end
end
