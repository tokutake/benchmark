MAX = ARGV[0].to_i

num = 0
(0..MAX).each do |i|
    (0..MAX).each do |j|
        num = num + j
        num = num & 0xfff
    end
end

puts num