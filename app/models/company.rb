class Company < ActiveRecord::Base

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      # headers: true if there is a row of headers in your csv data
      Company.create! row.to_hash
    end
  end

end
