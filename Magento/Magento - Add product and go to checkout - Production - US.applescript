use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Google Chrome"
	activate
	
	-- Open product page
	open location "https://www.happysocks.com/us/lily-rib-ankle-sock-4.html"
	
	-- Wait for page to load
	repeat until (loading of front window's active tab is false)
		1 + 1
	end repeat
	
	-- Add to cart
	delay 2
	execute front window's active tab javascript "document.querySelector('#product-addtocart-button').click();"
	
	-- Go to checkout
	delay 2
	execute front window's active tab javascript "document.querySelector('#top-cart-btn-checkout').click();"
	
	-- Wait for page to load	
	repeat until (loading of front window's active tab is false)
		1 + 1
	end repeat
	
	-- Click the email field
	delay 3
	execute front window's active tab javascript "document.querySelector('[for=customer-email]').click();"
	
	-- Fill in Email	
	delay 2
	tell application "System Events"
		set rand to (random number from 5 to 49) * 2
		keystroke "test"
		keystroke rand
	end tell
	
	delay 0.5
	
	tell application "System Events"
		set rand to (random number from 5 to 49) * 2
		keystroke "@test"
		keystroke rand
		keystroke ".com"
		keystroke "a" using command down
	end tell
	
	-- Click Confirm
	delay 2
	execute front window's active tab javascript "document.querySelector('[type=submit]').click(true);"
	
end tell

tell application "System Events"
	
	delay 0.5
	keystroke tab
	delay 0.5
	keystroke tab
	delay 0.5
	keystroke tab
	
	-- Fill in delivery address
	delay 0.5
	keystroke tab
	delay 0.5
	keystroke "Firstname"
	
	delay 0.5
	keystroke tab
	delay 0.5
	keystroke "Lastname"
	
	delay 0.5
	keystroke tab
	delay 0.5
	keystroke "Address"
	
	delay 0.5
	keystroke tab
	delay 0.5
	keystroke "Street Nr"
	
	delay 0.5
	keystroke tab
	delay 0.5
	keystroke "Address 2nd line"
	
	delay 0.5
	keystroke tab
	delay 0.5
	keystroke "12345"
	
	delay 0.5
	keystroke tab
	delay 0.5
	keystroke "City"
	
	-- Select state from list
	delay 1
	keystroke tab
	delay 0.5
	keystroke "a"
	
	-- Leave country
	delay 1
	keystroke tab
	
	-- Phone number
	delay 1
	keystroke tab
	delay 0.5
	keystroke "123456"
	
	-- Select Same as Shipping
	-- Need to check if box is ticked
	delay 1
	keystroke tab
	--delay 0.5
	--keystroke (key code 49)
	
	-- Click Go to Payment
	delay 1
	keystroke tab
	keystroke (key code 36)
	
	-- Select Credit card
	delay 3
	keystroke tab
	
end tell