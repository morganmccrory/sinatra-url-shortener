def random
  random_chars = []
  7.times do |x|
    array = []
    array << rand(1..9) << ("A".."Z").to_a[rand(26)] << ("a".."z").to_a[rand(26)]
    random_chars << array.sample
  end
  random_chars.join
end
