require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Підтвердження замовлення в магазині Cross-Shop", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["cross-shop@gmail.com"], mail.from
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "Cross-Shop відправив Ваше замовлення", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["cross-shop@gmail.com"], mail.from
  end

end
