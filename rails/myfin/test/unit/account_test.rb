require 'test_helper'

class AccountTest < ActiveSupport::TestCase
# fixtures :accounts

  test "account name must not be empty" do
    account = Account.new
    assert account.invalid?
    assert account.errors[:name].any?
  end

  test "account name must be less than 20" do
    account = Account.new(name: 'x'*21)
    assert account.invalid?
    assert_equal "is too long (maximum is 20 characters)", account.errors[:name].join('; ')

    account = Account.new(name: 'jmeno')
    assert account.valid?
  end

  test "account description must be less than 80" do
    account = Account.new(descr: 'x'*81)
    assert account.invalid?
    assert_equal "is too long (maximum is 80 characters)", account.errors[:descr].join('; ')

    account = Account.new(name: 'jmeno', descr: 'popis')
    assert account.valid?
  end

  test "account name must be unique" do
    account = Account.new(name: accounts(:penezenka).name,
                          descr: 'cokoliv')
    assert !account.save
    assert_equal I18n.translate('activerecord.errors.messages.taken'), account.errors[:name].join('; ')
  end
end
