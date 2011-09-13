Bitcoinica
==========

Wrapper for the Bitcoinica API.  For general usage, see their API docs:

https://www.bitcoinica.com/pages/api

Usage
-----

Authenticating
    Bitcoinica::Connection.authenticate!(username, password)

Creating an order
    order = Bitcoinica::Order.new(pair: 'BTCUSD', type: 'LIMIT', 
                                  price: '15', amount: '5')
    order.save

Cancelling an order
    order = Bitcoinica::Order.find(id)
    order.delete

== Contributing to bitcoinica
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

== Copyright

Copyright (c) 2011 Andy LeClair. See LICENSE.txt for
further details.

