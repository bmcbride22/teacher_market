puts 'Creating Subjects'
subjects = %w[Mathematics English Biology Chemistry Physics Economics History Geography]
subjects.each do |subject|
  Subject.create(title: subject)
end
puts 'Finished creating Subjects'

# Create Media Types seed
puts 'Creating Media Types'
media_types = %w[pdf powerpoint word excel text]
media_type_extensions = %w[.pdf .ppt .doc .xlsx .txt]
media_types.each_with_index do |type, i|
  new = MediaType.new
  new.name = type
  new.extension = media_type_extensions[i]
  new.save
  puts new
end
puts 'Finished Creating Media Types'

puts 'Creating Tags'
tags = %w[powerpoint word excel math english economics test quiz exam project activity homework group individual]
tags.each do |tag|
  p Tag.create(title: tag)
end
puts 'Finished creating tags'

puts 'Creating Payment Types'
types = %w[Visa Mastercard Amex]
types.each do |card_name|
  p PaymentType.create(name: card_name)
end
puts 'Finished creating payment types'
