class HobbiesController < ApplicationController
  def new
    @person = Person.find_by(id: params[:person_id])
    @hobby = @person.hobbies.build
    @kinds = Hobby.kinds.keys
  end

  def create
    @person = Person.find_by(id: params[:person_id])
    @hobby = @person.hobbies.build(hobby_params)
    if @hobby.save
      redirect_to person_path(@person)
    else
      render :new
    end
  end

  def edit
    @hobby = Hobby.find(params[:id])
    @kinds = Hobby.kinds.keys
  end

  def update
    @hobby = Hobby.find(params[:id])
    if @hobby.update(hobby_params)
      redirect_to person_path(@hobby.person)
    else
      render :edit
    end

  end

  def destroy
    @hobby = Hobby.find(params[:id])
    @hobby.destroy
    redirect_to person_path(@hobby.person)
  end

  private

  def hobby_params
    params.require(:hobby).permit(:name, :description, :kind, :person_id)
  end
end
