```ruby
Crz::Contract.limit(1000).find_each do |d| 
  Faraday.post("http://localhost:9200/oz/contracts/#{d.id}", d.to_indexable.to_json
end
```
