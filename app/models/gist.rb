class Gist < ActiveRecord::Base
  belongs_to :group

  validates :snippet,
    presence: true,
    length: { minimum: 3 }

  validates :lang,
    presence: true,
    length: { minimum: 1 }

  validates :description,
    presence: true,
    length: { minimum: 5 }

  validates :group_id,
    presence: true

  self.per_page = 10

  def self.search(search)
    if search
      where('lang LIKE ?', "%#{search}%")
    else
      where('')
    end
  end	
end
