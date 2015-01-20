class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_voter
  has_karma :buzzwords, :as => :user, :weight => [ 1, 0.5 ]
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :buzzwords, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :links, :dependent => :destroy

end
