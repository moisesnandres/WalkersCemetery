class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /people
  def index
    @filterrific = initialize_filterrific(
      Person,
      params[:filterrific],
      persistence_id: false
    ) or return
    @people = @filterrific.find.page(params[:page]).includes(:sector)
  end

  # GET /people/1
  def show
    @person = Person.find(params[:id])
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'El beneficiario fue añadido.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      redirect_to @person, notice: 'Los datos del beneficiario fueron actualizados.'
    else
      render :edit
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'El beneficiario fue removido.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:nombres, :apellidos, :fecha_nac, :fecha_fallecimiento, :obituario, :sector_id)
    end
end
