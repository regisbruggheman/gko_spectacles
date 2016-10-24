####################################################
puts "creating spectacle_list"
@account ||= Account.first
@user ||= @account.users.first
@site ||= @account.sites.first
@spectacle_list = @site.spectacle_lists.find_or_create_by_name!(
    :name => "my spectacle_list",
    :title => "my spectacle_list",
    :parent_id => @site.sections.root.id,
    :accept_categories => true,
    :accept_stickers => true,
    :published_at => Time.zone.now)

@spectacle_list.categories.map(&:destroy)
@spectacle_list.stickers.map(&:destroy)
@spectacle_list.spectacles.map(&:destroy)
    
####################################################
puts "creating spectacle_list categories"
10.times do |i|
  @spectacle_list.categories.create!(:title => "Spectacle category #{i}")
end
####################################################
puts "creating spectacle_list stickers"
20.times do |i|
  @spectacle_list.stickers.create!(:name => "Spectacle tag #{i}")
end
####################################################
puts "creating spectacles"
30.times do |i|
  @spectacle = @spectacle_list.spectacles.create!(
      :title => "My recent spectacle #{i}",
      :body => lorem,
      :published_at => rand(3.months).ago,
      :account_id => @account.id)

  2.times do
    @spectacle.categorizations.create(:category_id => random_resource(Category).id)
  end

  7.times do
    @spectacle.stickings.create(:sticker_id => random_resource(Sticker).id)
  end

  2.times do
    @spectacle.image_assignments.create(:image => random_resource(Image))
  end
end

50.times do |i|
  @spectacle = @spectacle_list.spectacles.create!(
      :title => "My spectacle archive #{i}",
      :body => lorem,
      :published_at => rand(2.years).ago,
      :account_id => @account.id)

  2.times do
    @spectacle.categorizations.create(:category_id => random_resource(Category).id)
  end

  7.times do
    @spectacle.stickings.create(:sticker_id => random_resource(Sticker).id)
  end

  2.times do
    @spectacle.image_assignments.create(:image => random_resource(Image))
  end
end

