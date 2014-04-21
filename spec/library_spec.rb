require 'spec_helper'

describe "Library Object" do

    before :all do
        lib_arr = [
            Book.new("Javascript: The Good Parts", "Douglas", :development),
            Book.new("Designing With Web Standards","Jeffrey", :design),
            Book.new("Don't Make My Think","Steve", :usability),
            Book.new("Javascript Patterns","Stoyan", :development),
            Book.new("Responsive Web Design","Ethan Marcotte", :design)
        ]

        File.open "books.yml", "w" do |f|
            f.write YAML::dump lib_arr
        end
    end

    before :each do
        @lib = Library.new "books.yml"
    end

    describe "#new" do
        context "with no parameters" do
            it "should have no books" do
                lib = Library.new
                lib.should have(0).books # lib.books.length.should == 0
            end
        end

        context "with a yaml file name parameter" do
            it "has five books" do
                @lib.should have(5).books
            end
        end

    end

end