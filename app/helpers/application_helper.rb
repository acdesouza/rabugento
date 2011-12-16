# encoding: utf-8
module ApplicationHelper
  def title(value)
    @title = value
  end
  
  def description(value)
    @description = value
  end
  
  def meta_description
    tag :meta, :name => "description", 
               :content => @description || "Rabugento, o site que monitora os todos os mimimis e agrega em um só lugar."
  end
end
