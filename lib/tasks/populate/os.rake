namespace :populate do

  desc 'Populate OS table for new users'
  task os: :environment do
    systems = ['Windows', 'Linux', 'Mac', 'Other']

    systems.each do |os|
      begin
        puts "Creating #{os} option"
        new_os = System.new name: os
        new_os.save!
      rescue => ex
        puts ex
      end
    end

    puts "System populate................... done!"

  end

  desc 'Populate Size table for new users'
  task size: :environment do
    sizes = ['Chica', 'Mediana', 'Grande', 'X-Grande', 'XX-Grande']

    sizes.each do |size|
      begin
        puts "Creating #{size} option"
        new_size = Size.new name: size
        new_size.save!
      rescue => ex
        puts ex
      end
    end

    puts "Size populate................... done!"

  end

end
