namespace :slurp do
  desc "TODO"
  task products: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "bestshop_products.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      p = Product.new
      p.retailer = row["Retailer"]
      p.name = row["Name"]
      p.brand = row["Brand"]
      p.description = row["Description"]
      p.price = row["Price"]
      p.link = row["Link"]
      p.image = row["Image"]
      p.save

     puts "#{p.retailer}, #{p.name}, #{p.brand}, #{p.description}, #{p.price}, #{p.link}, #{p.image} saved"

    end
    puts "There are now #{Product.count} rows in the products table"



  end
end
