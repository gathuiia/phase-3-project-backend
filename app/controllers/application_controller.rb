class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # get cocktails
  get "/cocktail" do
    all_cocktails = Cocktail.all
    all_cocktails.to_json()
  end

  # POST a cocktail
  post "/cocktail" do
    post_cocktail = Cocktail.create(
      cocktails_id: params[:cocktails_id],
      name: params[:name],
      style: params[:style],
      ingredients: params[:ingredients],
      instructions: params[:instructions]
    )
    post_recipe.save()
    {
      "Message": "Created cocktail successfully",
      "Status": "HTTP_200_OK"
    }.to_json()
  end

  # UPDATE cocktails
  patch "/cocktail/:cocktails_id" do
    update_cocktail = Cocktail.find(params[:cocktails_id])
    update_cocktail.update(
      cocktails_id: params[:cocktails_id],
      name: params[:name],
      style: params[:style],
      ingredients: params[:ingredients],
      instructions: params[:instructions]
    )
    update_cocktail.to_json()
  end

  # DELETE cocktails
  delete "/cocktail/:cocktails_id" do
    delete_cocktail = Cocktail.find(params[:cocktails_id])
    delete_cocktail.destory
    delete_cocktail.to_json()
  end

  # get cocktail by ID
  get "/cocktail/:cocktails_id" do
    by_cocktail_id = Cocktail.find_by(cocktails_id: params[:cocktails_id])
    by_cocktail_id.to_json()
  end

  
  # get bartenders
  get "/bartender" do
    all_bartenders = Bartender.all
    all_bartender.to_json()
  end  

  # get bartender by ID
  get "/bartender/:bartender_id" do
    by_bartender_id = Bartender.find_by(bartender_id: params[:bartender_id])
    by_bartender_id.to_json()
  end

end
