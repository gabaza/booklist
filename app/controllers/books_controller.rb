class BooksController < ApplicationController

def index
  @book = Book.all

  respond_to do |format|
    format.html
  end
end

end
