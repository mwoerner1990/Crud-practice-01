class PostingsController < ApplicationController
  def index
    @postings = Posting.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    Posting.create(name: params[:name],
      price: params[:price],
      description: params[:description]
      )
    render 'create.html.erb'
  end

  def show
    @posting = Posting.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @posting = Posting.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    posting = Posting.find_by(id: params[:id])
    posting.name = params[:name]
    posting.price = params[:price]
    posting.description = params[:description]
    posting.save
    render 'update.html.erb'
  end

  def destroy
    render 'destroy.html.erb'
  end

end
