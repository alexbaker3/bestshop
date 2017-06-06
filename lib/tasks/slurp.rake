namespace :slurp do
  desc "TODO"
  task products: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "bestshop_products.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      p = Product.new
      p.retailer = row["retailer"]
      p.name = row["name"]
      p.brand = row["brand"]
      p.description = row["description"]
      p.price = row["price"]
      p.link = row["link"]
      p.image = row["image"]
      p.save

    puts "#{p.retailer}, #{p.name}, #{p.brand}, #{p.description}, #{p.price}, #{p.link}, #{p.image} saved"

  end
puts "There are now #{Product.count} rows in the products table"
end
