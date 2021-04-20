class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
    #scope :search_all_fields, ->(text){
    #where("#{column_names.join(' || ')} like ?", "%#{text}%")
 # }
end

