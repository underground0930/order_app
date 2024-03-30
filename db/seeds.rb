# drink
%w[ビール ハイボール ワイン カクテル ノンアルコール レモンサワー].each do |drink|
  Drink.create!(name: drink, price: rand(300..800))
end

10.times do
  OrderUnit.create!(code: SecureRandom.hex(16))
end
