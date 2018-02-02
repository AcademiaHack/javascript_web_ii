class PeopleController < ApplicationController
  def index
    @people = Person.all
    @person = Person.new
  end

  def show
    @person = Person.find(params[:id])
    @hobby = @person.hobbies.build
  end

  def new
    @person = Person.new
    3.times do
      @person.hobbies.build
    end
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to person_path(@person)
    else
      render :new
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.update(person_params)
    if @person.save
      redirect_to person_path(@person)
    else
      render :edit
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:name, :email, :birthdate,
                                   :gender, :dni, :customer, hobbies_attributes: [:name, :description, :kind])
  end
end
