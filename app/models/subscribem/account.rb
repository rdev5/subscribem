module Subscribem
  class Account < ActiveRecord::Base
    attr_accessible :name, :subdomain, :owner_attributes

    belongs_to :owner, :class_name => 'Subscribem::User'
    accepts_nested_attributes_for :owner

    has_many :accounts_users, :class_name => 'Subscribem::AccountsUser'
    has_many :users, :through => :accounts_users

    validates :subdomain, :presence => true, :uniqueness => true

    def self.create_with_owner(params = {})
      account = new(params)
      if account.save
        account.users << account.owner
      end
      account
    end
    
  end
end
