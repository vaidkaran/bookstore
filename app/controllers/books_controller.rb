class BooksController < ApplicationController
  def new
    @book = Book.new
    @category = Category.new
    @publisher = Publisher.new
  end

   def create
    @book = Book.new(books_params)
    @book.save
    render 'new'
    #@category = Category.new
    #@publisher = Publisher.new
 end

   private
   def books_params
     params.require(:book).permit(:name, :category_id, :publisher_id)
   end
end
