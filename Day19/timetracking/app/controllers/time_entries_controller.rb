class TimeEntriesController < ApplicationController
  def index

  	@my_project = Project.find(params[:project_id])
  	@my_entries = @my_project.time_entries.where('created_at > ?', 1.month.ago)
  
  end

  def new

  	@my_project = Project.find(params[:project_id])
  	@my_entry = @my_project.time_entries.new

  end

  def create

  	@my_project = Project.find(params[:project_id])
  	@my_entry = @my_project.time_entries.new(
  							hours: params[:time_entry][:hours],
  							minutes: params[:time_entry][:minutes],
  							date: params[:time_entry][:date])

  		if @my_entry.save

  			redirect_to "/projects/#{@my_project.id}/time_entries"

  		else 

  			render 'new'

  		end

  end

  def edit

    @my_project = Project.find params[:project_id]
    @my_entry = @my_project.time_entries.find params[:id]

  end

  def update

    @my_entry = project_meth.time_entries.find params[:id]

    if @my_entry.update(entry_params)
    
    # if @my_entry.update(
    #             hours: params[:time_entry][:hours],
    #             minutes: params[:time_entry][:minutes],
    #             date: params[:time_entry][:date])

      redirect_to "/projects/#{project_meth.id}/time_entries"

      # redirect_to action: :index, project_id: @project.id
    
    else
      render 'edit'
    end

  end

  def destroy

    @my_project = Project.find params[:project_id]
    @my_entry = @my_project.time_entries.find params[:id]
    @my_entry.destroy

    redirect_to "/projects/#{@my_project.id}/time_entries"

  end

  private

  def entry_params
    
    params.require(:time_entry).permit(:hours, :minutes)
    
  end

  def project_meth
    Project.find params[:project_id]
  end

end

# o my_entries = Project.find(params[:id])