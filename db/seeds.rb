# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
attendee = Attendee.create([
  { 
    :id => 1,
    :name => "Robert Smith",
    :email => "user@email.com", 
    :carrier => 'Informatica', 
    :current_semester => 7, 
    :account_number => '0443124', 
    :gender => 'Masculino', 
    :twitter => 'SMITHER', 
    :system_id => 1, 
    :place => 'Mexico', 
    :enterprise => 'Web Init', 
    :rfc => '12312lkajsldjasls', 
    :curp => 'lkjsaldkjas12312' 
  },
  { 
    :id => 2,
    :name => "Elspeth Vazquez",
    :email => "user+01@email.com", 
    :carrier => 'Sistemas', 
    :current_semester => 9, 
    :account_number => '0443125', 
    :gender => 'Femenino', 
    :twitter => 'ELSPETH', 
    :system_id => 1, 
    :place => 'Mexico', 
    :enterprise => 'Web Init', 
    :rfc => '12312lkajsl123123', 
    :curp => 'asdasd3234sfsdfds' 
  },
  {
    :id => 3,
    :name => "Peter Anguila",
    :email => "use+02r@email.com", 
    :carrier => 'Informatica', 
    :current_semester => 7, 
    :account_number => '0443124', 
    :gender => 'Masculino', 
    :twitter => 'LAANGUILA', 
    :system_id => 1, 
    :place => 'Mexico', 
    :enterprise => 'Web Init', 
    :rfc => '12312lkajsldjasls', 
    :curp => 'lkjsaldkjas12312' 
  },
  { 
    :id => 4,
    :name => "Timotea Armenta",
    :email => "user+03@email.com", 
    :carrier => 'Informatica', 
    :current_semester => 9, 
    :account_number => '0443125', 
    :gender => 'Femenino', 
    :twitter => 'Timotea', 
    :system_id => 1, 
    :place => 'Mexico', 
    :enterprise => 'Web Init', 
    :rfc => '12312lkajsl123123', 
    :curp => 'asdasd3234sfsdfds' 
  }
])

