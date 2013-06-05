class Project < ActiveRecord::Base
  attr_accessible :book_id, :goal

  validates :book_id, :user_id, :goal, :presence => true
  validates_uniqueness_of :book_id, :scope => :user_id

  belongs_to :host, :class_name => "User", :foreign_key => "user_id"
  has_one :read_book, :class_name => "Book", :foreign_key => "book_id"
end
