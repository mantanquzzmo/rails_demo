Given("the following articles exist:") do |table|
  table.hashes.each do |hash|
    Article.create!(hash)
  end
end