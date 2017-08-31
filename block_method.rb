def block_method
  puts "This is the first line in block_method."
  yield
  yield
  puts "This is after the yield keyword."
end

block_method do
  puts "This statemnet is called from the block."
end
