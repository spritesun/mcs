m = 160
n = 240

FUNC = [
  ["ab", "c", 1, 2],
  ["ac", "ca", 1, 0],
  ["a", "b", 2, 3],
  ["c", "a", 3, 4],
  ["b", "b", 0, 5],
  ["a", "b", 5, 5]
]

sigma = "a" * m  + "b" * n
puts sigma

j = 0

running = true
while sigma.include?("a") || sigma.include?("c") do
  if (sigma.include?(FUNC[j][0]))
    sigma.sub!(FUNC[j][0], FUNC[j][1])
    j = FUNC[j][2]
    puts sigma + " #{j}"
  else
    j = FUNC[j][3]
  end
end

puts sigma.length