class XmlBuildersController < ApplicationController
  before_action :set_xml_builder, only: [:show, :edit, :update, :destroy]

  # GET /xml_builders
  # GET /xml_builders.json
  def index
    @xml_builders = XmlBuilder.all
  end

  # GET /xml_builders/1
  # GET /xml_builders/1.json
  def show
  end

  # GET /xml_builders/new
  def new
    @xml_builder = XmlBuilder.new
  end

  # GET /xml_builders/1/edit
  def edit
  end

  # POST /xml_builders
  # POST /xml_builders.json
  def create
    @xml_builder = XmlBuilder.new(xml_builder_params)

    respond_to do |format|
      if @xml_builder.save
        format.html { redirect_to @xml_builder, notice: 'Xml builder was successfully created.' }
        format.json { render :show, status: :created, location: @xml_builder }
      else
        format.html { render :new }
        format.json { render json: @xml_builder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xml_builders/1
  # PATCH/PUT /xml_builders/1.json
  def update
    respond_to do |format|
      if @xml_builder.update(xml_builder_params)
        format.html { redirect_to @xml_builder, notice: 'Xml builder was successfully updated.' }
        format.json { render :show, status: :ok, location: @xml_builder }
      else
        format.html { render :edit }
        format.json { render json: @xml_builder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xml_builders/1
  # DELETE /xml_builders/1.json
  def destroy
    @xml_builder.destroy
    respond_to do |format|
      format.html { redirect_to xml_builders_url, notice: 'Xml builder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xml_builder
      @xml_builder = XmlBuilder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xml_builder_params
      params[:xml_builder]
    end
end
