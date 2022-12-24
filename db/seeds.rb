subjects = %w[Mathematics English Biology Chemistry Physics Economics History Geography]

subjects.each do |subject|
  Subject.create(title: subject)
end
