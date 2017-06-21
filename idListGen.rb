puts 'Feed me IDs!'

ids = gets.chomp

def genList(ids_string)
  gen_list = ''
  ids_string.delete!(' ')
  ids_arr = ids_string.split('003')
  ids_arr.each do |id|
    gen_list << '003' + id[0..12] + ',' if id.length >= 12
  end
  gen_list
end

def validate_contact_id(contact_id)
  if contact_id.is_a?(String) == true
    contact_id.length == 15 && contact_id[0..2] == '003'
  end
end

puts genList(ids)
