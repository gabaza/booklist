class BooksController < ApplicationController

def index
  @book = Book.all

  respond_to do |format|
    format.html
    format.text

    format.csv do
      render plain: Book.generate_csv(@books)

    end

  end

end

end
