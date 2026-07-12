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

puts "Seeding SKU: Q6820..."
sku_q6820 = Sku.find_or_initialize_by(item_no: "Q6820", category: category_all)
sku_q6820.assign_attributes(
  name: "Quick dry Cap / Quick dry Fashion Hat",
  product_name: "Quick dry Cap / Quick dry Fashion Hat",
  material: "Polyester /Nylon/Recycled Polyester/Nylon /Spandex / Elastane",
  specification: "Stay Cool and Dry/Superior Quick-Dry/All-Day Breathability",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Customizable/Metal Buckle/ Buckle Snap / Plastic Slide Buckle /",
  embroidery_print: "Flat Embroidery/3D Embroidery / Flat Embroidery / Screen Printing / Heat Transfer/",
  color: "Bright Apple Green/ Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_q6820.save!
puts "✓ Created/Updated SKU: #{sku_q6820.item_no}"

puts "Seeding SKU: Q6821..."
sku_q6821 = Sku.find_or_initialize_by(item_no: "Q6821", category: category_all)
sku_q6821.assign_attributes(
  name: "Quick dry Cap / Quick dry Fashion Hat",
  product_name: "Quick dry Cap / Quick dry Fashion Hat",
  material: "Polyester /Nylon/Recycled Polyester/Nylon /Spandex / Elastane",
  specification: "Stay Cool and Dry/Superior Quick-Dry/All-Day Breathability",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Customizable/Metal Buckle/ Buckle Snap / Plastic Slide Buckle /",
  embroidery_print: "Flat Embroidery/3D Embroidery / Flat Embroidery / Screen Printing / Heat Transfer/",
  color: "Black/ Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_q6821.save!
puts "✓ Created/Updated SKU: #{sku_q6821.item_no}"

puts "Seeding SKU: Q6822..."
sku_q6822 = Sku.find_or_initialize_by(item_no: "Q6822", category: category_all)
sku_q6822.assign_attributes(
  name: "Quick dry Cap / Quick dry Fashion Hat",
  product_name: "Quick dry Cap / Quick dry Fashion Hat",
  material: "Polyester /Nylon/Recycled Polyester/Nylon /Spandex / Elastane",
  specification: "Stay Cool and Dry/Superior Quick-Dry/All-Day Breathability",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Customizable/Metal Buckle/ Buckle Snap / Plastic Slide Buckle /",
  embroidery_print: "Flat Embroidery/3D Embroidery / Flat Embroidery / Screen Printing / Heat Transfer/",
  color: "Black/ Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_q6822.save!
puts "✓ Created/Updated SKU: #{sku_q6822.item_no}"

puts "Seeding SKU: Q6823..."
sku_q6823 = Sku.find_or_initialize_by(item_no: "Q6823", category: category_all)
sku_q6823.assign_attributes(
  name: "Bucket hat / Blank bucket hat",
  product_name: "Bucket hat / Blank bucket hat",
  material: "Polyester",
  specification: "Lightweight Breathable Running Cap – UPF 50+ Sun Protection, Fast Drying Outdoor Hats, water proof",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  embroidery_print: "Customizable /3D Embroidery / Screen Printing / Heat Transfer",
  color: "Multi-color/ Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_q6823.save!
puts "✓ Created/Updated SKU: #{sku_q6823.item_no}"

puts "Seeding SKU: Q6824..."
sku_q6824 = Sku.find_or_initialize_by(item_no: "Q6824", category: category_all)
sku_q6824.assign_attributes(
  name: "Quick dry Cap / Quick dry Fashion Hat",
  product_name: "Quick dry Cap / Quick dry Fashion Hat",
  material: "Polyester /Nylon/Recycled Polyester/Nylon /Spandex / Elastane",
  specification: "Stay Cool and Dry/Superior Quick-Dry/All-Day Breathability",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Customizable/Metal Buckle/ Buckle Snap / Plastic Slide Buckle /",
  embroidery_print: "Flat Embroidery/3D Embroidery / Flat Embroidery / Screen Printing / Heat Transfer/",
  color: "Beige/ Multi-color / Custom Pantone Color",
  moq: "100 pcs per design color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_q6824.save!
puts "✓ Created/Updated SKU: #{sku_q6824.item_no}"

puts "Seeding SKU: B6001..."
sku_b6001 = Sku.find_or_initialize_by(item_no: "B6001", category: category_all)
sku_b6001.assign_attributes(
  name: "6 panel 100% cotton baseball cap",
  product_name: "6 panel 100% cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Velcro Strap / Buckle Snap / Plastic Slide Buckle / Metal Buckle",
  embroidery_print: "Flat Embroidery (3D Embroidery /  Screen Printing / Heat Transfer )",
  color: "Beige(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6001.save!
puts "✓ Created/Updated SKU: #{sku_b6001.item_no}"

puts "Seeding SKU: B6002..."
sku_b6002 = Sku.find_or_initialize_by(item_no: "B6002", category: category_all)
sku_b6002.assign_attributes(
  name: "6 panel 100% cotton baseball cap",
  product_name: "6 panel 100% cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Plastic Slide（ BuckleVelcro Strap / Buckle Snap / Metal Buckle）",
  embroidery_print: "3D Embroidery（Flat Embroidery Screen Printing / Heat Transfer )",
  color: "Beige(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6002.save!
puts "✓ Created/Updated SKU: #{sku_b6002.item_no}"

puts "Seeding SKU: B6003..."
sku_b6003 = Sku.find_or_initialize_by(item_no: "B6003", category: category_all)
sku_b6003.assign_attributes(
  name: "6 panel 100% cotton baseball cap",
  product_name: "6 panel 100% cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Plastic Slide Buckle /Velcro Strap / Buckle Snap /  Metal Buckle",
  embroidery_print: "Flat Embroidery (3D Embroidery /  Screen Printing / Heat Transfer )",
  color: "Beige(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6003.save!
puts "✓ Created/Updated SKU: #{sku_b6003.item_no}"

puts "Seeding SKU: B6004..."
sku_b6004 = Sku.find_or_initialize_by(item_no: "B6004", category: category_all)
sku_b6004.assign_attributes(
  name: "6 panel 100% cotton baseball cap",
  product_name: "6 panel 100% cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Metal Buckle/ Buckle Snap / Plastic Slide Buckle / Velcro Strap",
  embroidery_print: "Flat Embroidery (3D Embroidery /  Screen Printing / Heat Transfer )",
  color: "Beige(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6004.save!
puts "✓ Created/Updated SKU: #{sku_b6004.item_no}"

puts "Seeding SKU: B6005..."
sku_b6005 = Sku.find_or_initialize_by(item_no: "B6005", category: category_all)
sku_b6005.assign_attributes(
  name: "6 panel 100% cotton baseball cap",
  product_name: "6 panel 100% cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Metal Buckle（ BuckleVelcro Strap / Buckle Snap / Plastic Slide）",
  embroidery_print: "3D Embroidery（Flat Embroidery Screen Printing / Heat Transfer )",
  color: "Beige(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6005.save!
puts "✓ Created/Updated SKU: #{sku_b6005.item_no}"

puts "Seeding SKU: B6006..."
sku_b6006 = Sku.find_or_initialize_by(item_no: "B6006", category: category_all)
sku_b6006.assign_attributes(
  name: "6 panel 100% cotton baseball cap",
  product_name: "6 panel 100% cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Metal Slider（ BuckleVelcro Strap / Buckle Snap / Plastic Slide）",
  embroidery_print: "3D Embroidery（Flat Embroidery Screen Printing / Heat Transfer )",
  color: "Beige(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6006.save!
puts "✓ Created/Updated SKU: #{sku_b6006.item_no}"

puts "Seeding SKU: B6007..."
sku_b6007 = Sku.find_or_initialize_by(item_no: "B6007", category: category_all)
sku_b6007.assign_attributes(
  name: "6 panel 100% cotton baseball cap",
  product_name: "6 panel 100% cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Metal Slider（ BuckleVelcro Strap / Buckle Snap / Plastic Slide）",
  embroidery_print: "Applique Embroider（Flat Embroidery Screen Printing / Heat Transfer /3D Embroidery)",
  color: "Beige(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6007.save!
puts "✓ Created/Updated SKU: #{sku_b6007.item_no}"

puts "Seeding SKU: B6008..."
sku_b6008 = Sku.find_or_initialize_by(item_no: "B6008", category: category_all)
sku_b6008.assign_attributes(
  name: "6 panel 100% cotton baseball cap",
  product_name: "6 panel 100% cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Metal Buckle（ Metal Slider/BuckleVelcro Strap / Buckle Snap / Plastic Slide）",
  embroidery_print: "Applique Embroider（Flat Embroidery /Screen Printing / Heat Transfer /3D Embroidery)",
  color: "Beige(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6008.save!
puts "✓ Created/Updated SKU: #{sku_b6008.item_no}"

puts "Seeding SKU: B6009..."
sku_b6009 = Sku.find_or_initialize_by(item_no: "B6009", category: category_all)
sku_b6009.assign_attributes(
  name: "6 panel 100% cotton baseball cap",
  product_name: "6 panel 100% cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm",
  closure_type: "Metal Buckle（ Metal Slider/BuckleVelcro Strap / Buckle Snap / Plastic Slide）",
  embroidery_print: "Applique Embroider（Flat Embroidery /Screen Printing / Heat Transfer /3D Embroidery)",
  color: "Beige(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6009.save!
puts "✓ Created/Updated SKU: #{sku_b6009.item_no}"

puts "Seeding SKU: B6010..."
sku_b6010 = Sku.find_or_initialize_by(item_no: "B6010", category: category_all)
sku_b6010.assign_attributes(
  name: "6 panel 100% washed cotton baseball cap",
  product_name: "6 panel 100% washed cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm/customize",
  closure_type: "Plastic Slide（ BuckleVelcro Strap / Buckle Snap / Metal Buckle）",
  embroidery_print: "3D Embroidery（Flat Embroidery Screen Printing / Heat Transfer )",
  color: "Light blue(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6010.save!
puts "✓ Created/Updated SKU: #{sku_b6010.item_no}"

puts "Seeding SKU: B6011..."
sku_b6011 = Sku.find_or_initialize_by(item_no: "B6011", category: category_all)
sku_b6011.assign_attributes(
  name: "6 panel 100% washed cotton baseball cap",
  product_name: "6 panel 100% washed cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm/customize",
  closure_type: "Plastic Slide（ BuckleVelcro Strap / Buckle Snap / Metal Buckle）",
  embroidery_print: "3D Embroidery（Flat Embroidery Screen Printing / Heat Transfer )",
  color: "Earthy Khaki(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6011.save!
puts "✓ Created/Updated SKU: #{sku_b6011.item_no}"

puts "Seeding SKU: B6012..."
sku_b6012 = Sku.find_or_initialize_by(item_no: "B6012", category: category_all)
sku_b6012.assign_attributes(
  name: "6 panel 100% washed cotton baseball cap",
  product_name: "6 panel 100% washed cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm/customize",
  closure_type: "Plastic Slide（ BuckleVelcro Strap / Buckle Snap / Metal Buckle）",
  embroidery_print: "3D Embroidery（Flat Embroidery Screen Printing / Heat Transfer )",
  color: "Burgundy(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6012.save!
puts "✓ Created/Updated SKU: #{sku_b6012.item_no}"

puts "Seeding SKU: B6013..."
sku_b6013 = Sku.find_or_initialize_by(item_no: "B6013", category: category_all)
sku_b6013.assign_attributes(
  name: "6 panel 100% washed cotton baseball cap",
  product_name: "6 panel 100% washed cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm/customize",
  closure_type: "Plastic Slide（ BuckleVelcro Strap / Buckle Snap / Metal Buckle）",
  embroidery_print: "3D Embroidery（Flat Embroidery Screen Printing / Heat Transfer )",
  color: "Dark grey(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6013.save!
puts "✓ Created/Updated SKU: #{sku_b6013.item_no}"

puts "Seeding SKU: B6014..."
sku_b6014 = Sku.find_or_initialize_by(item_no: "B6014", category: category_all)
sku_b6014.assign_attributes(
  name: "6 panel 100% washed cotton baseball cap",
  product_name: "6 panel 100% washed cotton baseball cap",
  material: "100% cutton (customizable)",
  specification: "Stay Cool and comfortable",
  head_circumference: "54-58cm (Adjustable) / 56-60cm (Adjustable)",
  brim_length: "7cm / 7.5cm / 8cm/customize",
  closure_type: "Plastic Slide（ BuckleVelcro Strap / Buckle Snap / Metal Buckle）",
  embroidery_print: "3D Embroidery（Flat Embroidery Screen Printing / Heat Transfer )",
  color: "Red(Solid color / Multi-color / Custom Pantone Color)",
  moq: "100 pcs per design per color",
  sample_time: "5-7 Working Days according to the cap style",
  production_lead_time: "15-25 Working Days according to the cap style",
  packing: "1pc/opp bag, 25pcs/inner box, 200pcs/carton",
  carton_size: "58 48 38cm",
  gross_weight: "18-20KG/Carton",
  status: "active"
)
sku_b6014.save!
puts "✓ Created/Updated SKU: #{sku_b6014.item_no}"

