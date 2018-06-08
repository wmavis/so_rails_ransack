class Imagecapturing < ApplicationRecord
  # https://github.com/activerecord-hackery/ransack/#using-scopesclass-methods
  def self.finish_year(year)
    where("strftime('%Y', finish_date) = ?", year)
  end

  def self.ransackable_scopes(auth_object = nil)
    %i(finish_year)
  end
end
