require("spec_helper")
require 'pry'

describe(Book) do
  describe(".all") do
    it("starts off with no books") do
      expect(Book.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("inserts a book into the database") do
      book = Book.new({:id => nil, :author => "tom", :title => "Huck Finn", :available => "t", :return_date => "2018-07-29", :patron_id => 0})
      book.save
      expect(Book.all()).to(eq(book))
    end
  end
  describe("#==") do
  it("is the same book if it has the same name") do
    book1 = Book.new({:title => "Epicodus stuff", :id => nil})
    book2 = Book.new({:title => "Epicodus stuff", :id => nil})
    expect(book1).to(eq(book2))
  end
end

describe("#update") do
  it("updates the name of book in the book database") do
    book = Book.new({:name => "Huck Fin", :id => nil})
    book.save()
    movie.update({:name => "I ROBOT"})
    expect(book.name()).to(eq("I ROBOT"))
  end
end

describe("#delete") do
  it("lets you delete a book from book the database") do
    book = Book.new({:name => "Oceans Eleven", :id => nil})
    book.save()
    book2 = Book.new({:name => "Oceans Twelve", :id => nil})
    book2.save()
    book.delete()
    expect(Book.all()).to(eq([book2]))
  end
end

end
# describe(Author) do
#   describe(".all") do
#     it("starts off with no authors") do
#       expect(Author.all()).to(eq([]))
#     end
#   end
#   describe("#save") do
#     it("inserts a author into the database") do
#       # expect(Author.all()).to(eq([]))
#     end
#   end

# end
