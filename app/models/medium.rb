class Medium < ApplicationRecord
  has_many :views

  def self.search(term, current_page)
    if term
      page(current_page).where('title LIKE ?', "%#{term}%").order('id DESC')
    else
      page(current_page).order('id DESC')
    end
  end

end
