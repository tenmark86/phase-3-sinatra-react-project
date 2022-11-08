class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/contests" do
    contest = Contest.all.order(:start_time)
    contest.to_json(include: :site)
  end

  post "/contests" do
    new_contest = Contest.create(
      contest_name: params[:contest_name],
      url: params[:url],
      start_time: params[:start_time],
      end_time: params[:end_time],
      duration: params[:duration],
      site: params[:site],
      hosting_website: params[:hosting_website]
    )
    new_contest.to_json
  end

  delete "/contests/:id" do
    deleted_contest = Contest.find(params[:id])
    deleted_contest.destroy
    deleted_contest.to_json
  end

  #patch "contests/:id" do
  #  updated_contest = Contest.find(params[:id])
  #  updated_contest.update(
  #    contest_name: params[:contest_name],
  #    url: params[:url],
  #    start_time: params[:start_time],
  #    end_time: params[:end_time],
  #    duration: params[:duration],
  #    site: params[:site],
  #    hosting_website: params[:hosting_website]
  #  )
  #  updated_contest.to_json
  #end

end