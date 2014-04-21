require 'spec_helper'

describe Book do

    before :each do
    #before :all do
        @book = Book.new("Title", "Author", "Category")
    end

    describe "#new" do
        it "returns a new book object" do
            @book.should be_an_instance_of Book
        end

        it "takes three parameters and returns a book object" do
            Book.new("Title", "Author", "Category")
        end

    end

end