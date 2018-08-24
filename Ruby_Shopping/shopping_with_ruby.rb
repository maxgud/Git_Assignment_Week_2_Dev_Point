@cash = 50.00

@a = 0
@b = 0
@c = 0
@d = 0
@e = 0


class Customer_Items
	attr_accessor :customer_item, :c_amount
	def initialize(customer_item, c_amount)
		@customer_item = customer_item
		@c_amount = c_amount
	end
end


class Store
 attr_accessor :item, :amount, :price
 def initialize(item, amount, price)
   @item = item
   @amount = amount
   @price = price
 end
end

@penned = Store.new("Pens", 250, 0.75)
@penciled = Store.new("Pencils", 350, 0.25)
@notepaded = Store.new("Notepads", 560, 1.25)
@ledgered = Store.new("Ledgers", 900, 2.25)

def store_inventory
	puts "---------------------------"
	puts "Our store inventory:"
	puts "Number of " + @penned.item + "(s)" 
	puts @penned.amount
	puts "Price : $" + @penned.price.to_s
	puts "Number of " + @penciled.item + "(s)" 
	puts @penciled.amount
	puts "Price : $" + @penciled.price.to_s
	puts "Number of " + @notepaded.item + "(s)" 
	puts @notepaded.amount
	puts "Price : $" + @notepaded.price.to_s
	puts "Number of " + @ledgered.item + "(s)" 
	puts @ledgered.amount
	puts "Price : $" + @ledgered.price.to_s
	puts "---------------------------"

	menu
end

def wallet
	puts "---------------------------"
	puts "Your current balance is $" + @cash.to_s
	puts "---------------------------"
	menu
end

def buy_an_item

	puts "Choose the number of the item you would like to buy.?"
	puts "---------------------------"
	puts "Our store inventory:"
	puts "1 -- Number of " + @penned.item + "(s)" 
	puts @penned.amount
	puts "Price : $" + @penned.price.to_s
	puts "2 -- Number of " + @penciled.item + "(s)" 
	puts @penciled.amount
	puts "Price : $" + @penciled.price.to_s
	puts "3 --Number of " + @notepaded.item + "(s)" 
	puts @notepaded.amount
	puts "Price : $" + @notepaded.price.to_s
	puts "4 -- Number of " + @ledgered.item + "(s)" 
	puts @ledgered.amount
	puts "Price : $" + @ledgered.price.to_s

	choice = gets.to_i
  case choice
  when 1
  @a = 1
  puts "How many pens would you like to buy at $" + @penned.price.to_s + "?"
    p_1 = gets.to_i

    if p_1 > @penned.amount
    	puts	"Our appologies, we don't have that many pens, please choose a different amount."
    	puts "---------------------------"
    	buy_an_item
    elsif (p_1*@penned.price) > @cash
    	puts "Im sorry, you don't have enough money for "+ p_1.to_s + " pens."
    	puts "The total cost is $" + (p_1*@penned.price).to_s
    	menu
    elsif
    @penned.amount = @penned.amount - p_1
    @cash = @cash - (p_1*@penned.price)
    @pen_item = Customer_Items.new(@penned.item, p_1)
    puts "You bought " + p_1.to_s + " pen(s)"
	  puts "Your remaining balance: " + @cash.to_s
  	menu
  	end
  when 2
  	@b = 1
    puts "How many pencils would you like to buy at $" + @penciled.price.to_s + "?"
    p_2 = gets.to_i

    if p_2 > @penciled.amount
	    puts	"Our appologies, we don't have that many pencils, please choose a different amount."
	    puts "---------------------------"
	    buy_an_item
	  elsif (p_2*@penciled.price) > @cash
    	puts "Im sorry, you don't have enough money for " + p_2.to_s + " pencil(s)."
    	puts "The total cost is $" + (p_2*@penciled.price).to_s
    	menu 
    elsif
	    @penciled.amount = @penciled.amount - p_2
	    @cash = @cash - (p_2*@penciled.price)
	    @pencil_item = Customer_Items.new(@penciled.item, p_2)
	    puts "You bought " + p_2.to_s + " pencil(s)"
	    puts "Your remaining balance: " + @cash.to_s
  		menu
  	end
  when 3
  	@c = 1
    puts "How many notepads would you like to buy at $" + @notepaded.price.to_s + "?"
    p_3 = gets.to_i

    if p_3 > @notepaded.amount
	    puts	"Our appologies, we don't have that many pencils, please choose a different amount."
	    puts "---------------------------"
	    buy_an_item
	  elsif (p_3*@notepaded.price) > @cash
    	puts "Im sorry, you don't have enough money for " + p_3.to_s + " notepad(s)."
    	puts "The total cost is $" + (p_3*@notepaded.price).to_s
    	menu
    elsif
	    @notepaded.amount = @notepaded.amount - p_3
	    @cash = @cash - (p_3*@notepaded.price)
	    @notepad_item = Customer_Items.new(@notepaded.item, p_3)
	    puts "You bought " + p_3.to_s + " notepad(s)"

	    puts "Your remaining balance: " + @cash.to_s
  		menu
  	end
  when 4
  	@d = 1
    puts "How many notepads would you like to buy at $" + @ledgered.price.to_s + "?"
    p_4 = gets.to_i

    if p_4 > @ledgered.amount
	    puts	"Our appologies, we don't have that many ledgers, please choose a different amount."
	    puts "---------------------------"
	    buy_an_item
    elsif (p_4*@ledgered.price) > @cash
    	puts "Im sorry, you don't have enough money for " + p_4.to_s + " ledger(s)."
    	puts "The total cost is $" + (p_4*@ledgered.price).to_s
    	menu


    elsif
    	
	    @ledgered.amount = @ledgered.amount - p_4
	    @cash = @cash - (p_4*@ledgered.price)
	    @ledger_item = Customer_Items.new(@ledgered.item, p_4)
	    puts "You bought " + p_4.to_s + " ledger(s)"

	    puts "Your remaining balance: " + @cash.to_s
	    menu
  	end
  else
    puts "Invalid Choice Try again"
    buy_an_item
  end
end

def view_your_items
	puts "Your Basket"
	puts "---------------------------"
	if @a > 0
	puts "The amount of " + @pen_item.customer_item + "(s)"
	puts @pen_item.c_amount 

	else
	end
	if @b > 0
	puts "The amount of " + @pencil_item.customer_item + "(s)"
	puts @pencil_item.c_amount 

	else
	end
	if @c > 0
	puts "The amount of " + @notepad_item.customer_item + "(s)"
	puts @notepad_item.c_amount 

	else
	end
	if @d > 0
	puts "The amount of " + @ledger_item.customer_item + "(s)"
	puts @ledger_item.c_amount 

	else
	end
	if @a == 0 && @b == 0 && @c == 0 && @d == 0
		puts "---------------------------"
		puts "Your Basket it empty." 
		puts "---------------------------"
	else
	end
	menu
end

def sell_your_items

	if @a > 0
		puts "---------------------------"
		puts "The number of pens you have : " + @pen_item.c_amount.to_s
		puts "How many pens would you like to sell for half of inital cost?"
		sell_pens = gets.to_i
		@pen_item.c_amount = (@pen_item.c_amount.to_i - sell_pens.to_i)
		puts "You now have " + @pen_item.c_amount.to_s + " pens."
		money_made = (@penned.price.to_f * 0.5 *sell_pens.to_f)
		puts "You made $" + money_made.to_s + ".  This will be added to your wallet."   
		@cash = @cash + money_made
		puts "---------------------------"
	end
	if @b > 0
		puts "---------------------------"
		puts "The number of pencils you have : " + @pencil_item.c_amount.to_s
		puts "How many penils would you like to sell for half of inital cost?"
		sell_pencils = gets.to_i
		@pencil_item.c_amount = (@pencil_item.c_amount.to_i - sell_pencils.to_i)
		puts "You now have " + @pencil_item.c_amount.to_s + " pencils."
		money_made = (@penciled.price.to_f * 0.5 *sell_pencils.to_f)
		puts "You made $" + money_made.to_s + ".  This will be added to your wallet."   
		@cash = @cash + money_made
		puts "---------------------------"
	end
	if @c > 0
		puts "---------------------------"
		puts "The number of notepads you have : " + @notepad_item.c_amount.to_s
		puts "How many notepads would you like to sell for half of inital cost?"
		sell_notepads = gets.to_i
		@notepad_item.c_amount = (@notepad_item.c_amount.to_i - sell_notepads.to_i)
		puts "You now have " + @notepad_item.c_amount.to_s + " notepads."
		money_made = (@notepaded.price.to_f * 0.5 *sell_notepads.to_f)
		puts "You made $" + money_made.to_s + ".  This will be added to your wallet."   
		@cash = @cash + money_made
		puts "---------------------------"
	end
	if @d > 0
		puts "---------------------------"
		puts "The number of ledgers you have : " + @ledger_item.c_amount.to_s
		puts "How many ledgers would you like to sell for half of inital cost?"
		sell_ledgers = gets.to_i
		@ledger_item.c_amount = (@ledger_item.c_amount.to_i - sell_ledgers.to_i)
		puts "You now have " + @ledger_item.c_amount.to_s + " ledgers."
		money_made = (@ledgered.price.to_f * 0.5 *sell_ledgers.to_f)
		puts "You made $" + money_made.to_s + ".  This will be added to your wallet."   
		@cash = @cash + money_made
		puts "---------------------------"
	end
	if @a == 0 && @b == 0 && @c == 0 && @d == 0 
		puts "You have no items to sell."
		menu
	end
	menu

end

def user_selection
  choice = gets.to_i
  case choice
  when 1
    store_inventory
  when 2
    wallet
  when 3
    buy_an_item
  when 4
    view_your_items
  when 5
    sell_your_items
  when 6
  	puts "Goodbye"
  	exit
  else
    puts "Invalid Choice Try again"
    menu
  end
end

def menu

	if @e == 0

	puts "Welcome, what is your name?"
	user_name = gets.chomp
	puts "Thanks you " + user_name + ".  How much money did you bring?"
	@cash = gets.to_i
	@e = 1
	puts "Welcome " + user_name.to_s 
	puts "You have $" + @cash.to_s + " in your Wallet."
	end

	puts "---------------------------"
	puts "What would you like to do?"
	puts "1 -- See our Inventory."
	puts "2 -- View Your Wallet."
	puts "3 -- Buy an item."	
	puts "4 -- View your items."
	puts "5 -- Sell an item."
	puts "6 -- Exit"
	puts "---------------------------"
	user_selection

end

menu