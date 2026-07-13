# This file should ensure the existence of records required to run the application
# in every environment in which it's expected to run.
#
# This is especially important for records that other records depend on,
# records that serve as defaults, or records that must always exist for
# the application to function properly.
#
# To run this file, execute:
#
puts "Seeding categories..."
category_all = Category.find_or_create_by!(name: "all") do |c|
  c.category_kind = "a"
end
puts "✓ Created/Found category: #{category_all.name}"

puts "Seeding SKU: Q6818..."
sku = Sku.find_or_initialize_by(item_no: "Q6818", category: category_all)
sku.assign_attributes(
  name: "Quick dry Cap / Quick dry Fashion Hat",
  product_name: "Quick dry Cap / Quick dry Fashion Hat",
  material: "Polyester /Nylon/Recycled Polyester/Nylon /Spandex / Elastane",
  specification: "Stay Cool and Dry/Superior Quick-Dry/All-Day Breathability",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Customizable/Metal Buckle/ Buckle Snap / Plastic Slide Buckle /",
  embroidery_print: "Flat Embroidery/3D Embroidery / Flat Embroidery / Screen Printing / Heat Transfer/",
  color: "Blue/ Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku.save!
puts "✓ Created/Updated SKU: #{sku.item_no}"

puts "Seeding SKU: Q6819..."
sku_q6819 = Sku.find_or_initialize_by(item_no: "Q6819", category: category_all)
sku_q6819.assign_attributes(
  name: "Quick dry Cap / Quick dry Fashion Hat",
  product_name: "Quick dry Cap / Quick dry Fashion Hat",
  material: "Polyester /Nylon/Recycled Polyester/Nylon /Spandex / Elastane",
  specification: "Stay Cool and Dry/Superior Quick-Dry/All-Day Breathability",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Customizable/Metal Buckle/ Buckle Snap / Plastic Slide Buckle /",
  embroidery_print: "Flat Embroidery/3D Embroidery / Flat Embroidery / Screen Printing / Heat Transfer/",
  color: "Blue/ Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_q6819.save!
puts "✓ Created/Updated SKU: #{sku_q6819.item_no}"

puts "Seeding SKU: B6501..."
sku_b6501 = Sku.find_or_initialize_by(item_no: "B6501", category: category_all)
sku_b6501.assign_attributes(
  name: "Bucket hat / Blank bucket hat",
  product_name: "Bucket hat / Blank bucket hat",
  material: "100% cotton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  embroidery_print: "Customizable / 3D Embroidery / Screen Printing / Heat Transfer",
  color: "Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6501.save!
puts "✓ Created/Updated SKU: #{sku_b6501.item_no}"

puts "Seeding SKU: B6502..."
sku_b6502 = Sku.find_or_initialize_by(item_no: "B6502", category: category_all)
sku_b6502.assign_attributes(
  name: "Bucket hat / Blank bucket hat",
  product_name: "Bucket hat / Blank bucket hat",
  material: "100% cotton (customizable)",
  specification: "Lightweight Breathable Running Cap – UPF 50+ Sun Protection, Fast Drying Outdoor Hats, water proof",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  embroidery_print: "Customizable / 3D Embroidery / Screen Printing / Heat Transfer",
  color: "Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6502.save!
puts "✓ Created/Updated SKU: #{sku_b6502.item_no}"

puts "Seeding SKU: B6503..."
sku_b6503 = Sku.find_or_initialize_by(item_no: "B6503", category: category_all)
sku_b6503.assign_attributes(
  name: "Bucket hat / Blank bucket hat",
  product_name: "Bucket hat / Blank bucket hat",
  material: "Polyester",
  specification: "Lightweight Breathable Running Cap – UPF 50+ Sun Protection, Fast Drying Outdoor Hats, water proof",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  embroidery_print: "Customizable / 3D Embroidery / Screen Printing / Heat Transfer",
  color: "Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6503.save!
puts "✓ Created/Updated SKU: #{sku_b6503.item_no}"

puts "Seeding SKU: B6504..."
sku_b6504 = Sku.find_or_initialize_by(item_no: "B6504", category: category_all)
sku_b6504.assign_attributes(
  name: "Bucket hat / Blank bucket hat",
  product_name: "Bucket hat / Blank bucket hat",
  material: "Polyester",
  specification: "Lightweight Breathable Running Cap – UPF 50+ Sun Protection, Fast Drying Outdoor Hats, water proof",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  embroidery_print: "Customizable / 3D Embroidery / Screen Printing / Heat Transfer",
  color: "Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6504.save!
puts "✓ Created/Updated SKU: #{sku_b6504.item_no}"

puts "Seeding SKU: B6505..."
sku_b6505 = Sku.find_or_initialize_by(item_no: "B6505", category: category_all)
sku_b6505.assign_attributes(
  name: "Bucket hat / Blank bucket hat",
  product_name: "Bucket hat / Blank bucket hat",
  material: "Polyester",
  specification: "Lightweight Breathable Running Cap – UPF 50+ Sun Protection, Fast Drying Outdoor Hats, water proof",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  embroidery_print: "Customizable / 3D Embroidery / Screen Printing / Heat Transfer",
  color: "Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6505.save!
puts "✓ Created/Updated SKU: #{sku_b6505.item_no}"

puts "Seeding SKU: B6506..."
sku_b6506 = Sku.find_or_initialize_by(item_no: "B6506", category: category_all)
sku_b6506.assign_attributes(
  name: "Bucket hat / Blank bucket hat",
  product_name: "Bucket hat / Blank bucket hat",
  material: "Polyester",
  specification: "Lightweight Breathable Running Cap – UPF 50+ Sun Protection, Fast Drying Outdoor Hats, water proof",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  embroidery_print: "Customizable / 3D Embroidery / Screen Printing / Heat Transfer",
  color: "Tie dyed / Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6506.save!
puts "✓ Created/Updated SKU: #{sku_b6506.item_no}"

puts "Seeding SKU: B6507..."
sku_b6507 = Sku.find_or_initialize_by(item_no: "B6507", category: category_all)
sku_b6507.assign_attributes(
  name: "Bucket hat / Blank bucket hat",
  product_name: "Bucket hat / Blank bucket hat",
  material: "100% cotton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  embroidery_print: "Flat embroidery / Customizable / 3D Embroidery / Screen Printing / Heat Transfer",
  color: "White / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6507.save!
puts "✓ Created/Updated SKU: #{sku_b6507.item_no}"

puts "Seeding SKU: B6508..."
sku_b6508 = Sku.find_or_initialize_by(item_no: "B6508", category: category_all)
sku_b6508.assign_attributes(
  name: "Bucket hat / Blank bucket hat",
  product_name: "Bucket hat / Blank bucket hat",
  material: "Polyester",
  specification: "Lightweight Breathable Running Cap – UPF 50+ Sun Protection, Fast Drying Outdoor Hats, water proof",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  embroidery_print: "Customizable / 3D Embroidery / Screen Printing / Heat Transfer",
  color: "Dark grey / Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6508.save!
puts "✓ Created/Updated SKU: #{sku_b6508.item_no}"

puts "Seeding SKU: B6509..."
sku_b6509 = Sku.find_or_initialize_by(item_no: "B6509", category: category_all)
sku_b6509.assign_attributes(
  name: "Bucket hat / Blank bucket hat",
  product_name: "Bucket hat / Blank bucket hat",
  material: "Polyester / mesh",
  specification: "Lightweight Breathable Running Cap – UPF 50+ Sun Protection, Fast Drying Outdoor Hats, water proof",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  embroidery_print: "Customizable / 3D Embroidery / Screen Printing / Heat Transfer",
  color: "Light grey / Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6509.save!
puts "✓ Created/Updated SKU: #{sku_b6509.item_no}"

puts "Seeding SKU: B6510..."
sku_b6510 = Sku.find_or_initialize_by(item_no: "B6510", category: category_all)
sku_b6510.assign_attributes(
  name: "Bucket hat / Blank bucket hat",
  product_name: "Bucket hat / Blank bucket hat",
  material: "Polyester / mesh",
  specification: "Lightweight Breathable Running Cap – UPF 50+ Sun Protection, Fast Drying Outdoor Hats, water proof",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  embroidery_print: "Customizable / 3D Embroidery / Screen Printing / Heat Transfer",
  color: "Tie-dyed / Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6510.save!
puts "✓ Created/Updated SKU: #{sku_b6510.item_no}"

puts "Seeding SKU: B6511..."
sku_b6511 = Sku.find_or_initialize_by(item_no: "B6511", category: category_all)
sku_b6511.assign_attributes(
  name: "Bucket hat / Blank bucket hat",
  product_name: "Bucket hat / Blank bucket hat",
  material: "Polyester / mesh",
  specification: "Lightweight Breathable Running Cap – UPF 50+ Sun Protection, Fast Drying Outdoor Hats, water proof",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  embroidery_print: "Customizable / 3D Embroidery / Screen Printing / Heat Transfer",
  color: "Tie-dyed / Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6511.save!
puts "✓ Created/Updated SKU: #{sku_b6511.item_no}"

puts "Seeding SKU: W6501..."
sku_w6501 = Sku.find_or_initialize_by(item_no: "W6501", category: category_all)
sku_w6501.assign_attributes(
  name: "Quilted Padded Winter Trapper hat with Ear flaps",
  product_name: "Quilted Padded Winter Trapper hat with Ear flaps",
  material: "Outer: Lightweight windproof polyester puffer fabric, Filling: Soft polyester cotton padding warm & lightweight, Lining: Smooth polyester lining",
  specification: "Warm / cute and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  closure_type: "Cord lock",
  embroidery_print: "Flat Embroidery (3D Embroidery / Screen Printing / Heat Transfer)",
  color: "Beige (Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_w6501.save!
puts "✓ Created/Updated SKU: #{sku_w6501.item_no}"

puts "Seeding SKU: W6502..."
sku_w6502 = Sku.find_or_initialize_by(item_no: "W6502", category: category_all)
sku_w6502.assign_attributes(
  name: "Faux Fur Lined Trapper baseball cap",
  product_name: "Faux Fur Lined Trapper baseball cap",
  material: "Outer: 100% cotton twill / washed cotton canvas, Ear flap lining: Soft thick faux fur (plush fleece), Inner crown lining: Thin polyester lining",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Velcro Strap / Buckle Snap / Plastic Slide Buckle / Metal Buckle",
  embroidery_print: "Flat Embroidery (3D Embroidery / Screen Printing / Heat Transfer)",
  color: "Multi-color / Custom Pantone Color",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_w6502.save!
puts "✓ Created/Updated SKU: #{sku_w6502.item_no}"

puts "Seeding SKU: T6301..."
sku_t6301 = Sku.find_or_initialize_by(item_no: "T6301", category: category_all)
sku_t6301.assign_attributes(
  name: "Sun cap / Visor cap",
  product_name: "Sun cap / Visor cap",
  material: "100% cotton / quick dry material",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Velcro Strap / Buckle Snap / Plastic Slide Buckle / Metal Buckle",
  embroidery_print: "Flat Embroidery (3D Embroidery / Screen Printing / Heat Transfer)",
  color: "Multi-color / Custom Pantone Color",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_t6301.save!
puts "✓ Created/Updated SKU: #{sku_t6301.item_no}"

puts "Seeding SKU: T6302..."
sku_t6302 = Sku.find_or_initialize_by(item_no: "T6302", category: category_all)
sku_t6302.assign_attributes(
  name: "Sun cap / Visor cap",
  product_name: "Sun cap / Visor cap",
  material: "100% cotton / quick dry material",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Velcro Strap / Buckle Snap / Plastic Slide Buckle / Metal Buckle",
  embroidery_print: "Flat Embroidery (3D Embroidery / Screen Printing / Heat Transfer)",
  color: "Multi-color / Custom Pantone Color",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_t6302.save!
puts "✓ Created/Updated SKU: #{sku_t6302.item_no}"

puts "Seeding SKU: T6303..."
sku_t6303 = Sku.find_or_initialize_by(item_no: "T6303", category: category_all)
sku_t6303.assign_attributes(
  name: "Sun cap / Visor cap",
  product_name: "Sun cap / Visor cap",
  material: "100% cotton / quick dry material",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Velcro Strap / Buckle Snap / Plastic Slide Buckle / Metal Buckle",
  embroidery_print: "Flat Embroidery (3D Embroidery / Screen Printing / Heat Transfer)",
  color: "Multi-color / Custom Pantone Color",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_t6303.save!
puts "✓ Created/Updated SKU: #{sku_t6303.item_no}"

puts "Seeding SKU: T6201..."
sku_t6201 = Sku.find_or_initialize_by(item_no: "T6201", category: category_all)
sku_t6201.assign_attributes(
  name: "6 panel trucker cap",
  product_name: "6 panel trucker cap",
  material: "Front: 100% cotton (customizable), Back: Polyester",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Velcro Strap / Buckle Snap / Plastic Slide Buckle / Metal Buckle",
  embroidery_print: "Flat Embroidery (3D Embroidery / Screen Printing / Heat Transfer)",
  color: "Multi-color / Custom Pantone Color",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_t6201.save!
puts "✓ Created/Updated SKU: #{sku_t6201.item_no}"

puts "Seeding SKU: T6202..."
sku_t6202 = Sku.find_or_initialize_by(item_no: "T6202", category: category_all)
sku_t6202.assign_attributes(
  name: "5 panel trucker cap",
  product_name: "5 panel trucker cap",
  material: "Front: Corduroy, Back: Polyester",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Velcro Strap / Buckle Snap / Plastic Slide Buckle / Metal Buckle",
  embroidery_print: "Flat Embroidery (3D Embroidery / Screen Printing / Heat Transfer)",
  color: "Multi-color / Custom Pantone Color",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_t6202.save!
puts "✓ Created/Updated SKU: #{sku_t6202.item_no}"

puts "Seeding SKU: F6101..."
sku_f6101 = Sku.find_or_initialize_by(item_no: "F6101", category: category_all)
sku_f6101.assign_attributes(
  name: "6 panel 100% cotton flat bill cap",
  product_name: "6 panel 100% cotton flat bill cap",
  material: "100% cotton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Velcro Strap / Buckle Snap / Plastic Slide Buckle / Metal Buckle",
  embroidery_print: "Flat Embroidery (3D Embroidery / Screen Printing / Heat Transfer)",
  color: "Black (Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_f6101.save!
puts "✓ Created/Updated SKU: #{sku_f6101.item_no}"

puts "Seeding SKU: F6102..."
sku_f6102 = Sku.find_or_initialize_by(item_no: "F6102", category: category_all)
sku_f6102.assign_attributes(
  name: "6 panel quick dry material flat bill cap",
  product_name: "6 panel quick dry material flat bill cap",
  material: "Polyester",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Plastic Slide Buckle / Velcro Strap / Buckle Snap / Metal Buckle",
  embroidery_print: "Flat Embroidery (3D Embroidery / Screen Printing / Heat Transfer)",
  color: "Black (Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_f6102.save!
puts "✓ Created/Updated SKU: #{sku_f6102.item_no}"

puts "Seeding SKU: F6103..."
sku_f6103 = Sku.find_or_initialize_by(item_no: "F6103", category: category_all)
sku_f6103.assign_attributes(
  name: "6 panel quick dry material flat bill cap",
  product_name: "6 panel quick dry material flat bill cap",
  material: "Polyester",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Cord lock / Plastic Slide Buckle / Velcro Strap / Buckle Snap / Metal Buckle",
  embroidery_print: "Flat Embroidery (3D Embroidery / Screen Printing / Heat Transfer)",
  color: "Black (Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_f6103.save!
puts "✓ Created/Updated SKU: #{sku_f6103.item_no}"

puts "Seeding SKU: F6104..."
sku_f6104 = Sku.find_or_initialize_by(item_no: "F6104", category: category_all)
sku_f6104.assign_attributes(
  name: "Multi panel flat bill cap",
  product_name: "Multi panel flat bill cap",
  material: "100% cotton",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Plastic Slide Buckle / Velcro Strap / Buckle Snap / Metal Buckle",
  embroidery_print: "Flat Embroidery (3D Embroidery / Screen Printing / Heat Transfer)",
  color: "Black (Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_f6104.save!
puts "✓ Created/Updated SKU: #{sku_f6104.item_no}"

puts "Seeding SKU: F6105..."
sku_f6105 = Sku.find_or_initialize_by(item_no: "F6105", category: category_all)
sku_f6105.assign_attributes(
  name: "Multi panel and color flat bill cap",
  product_name: "Multi panel and color flat bill cap",
  material: "100% cotton",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Plastic Slide Buckle / Velcro Strap / Buckle Snap / Metal Buckle",
  embroidery_print: "Flat Embroidery (3D Embroidery / Screen Printing / Heat Transfer)",
  color: "Black (Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_f6105.save!
puts "✓ Created/Updated SKU: #{sku_f6105.item_no}"

