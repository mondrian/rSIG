# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def select_for(form, campo, model, campo_exibicao, *opcoes)
    form.select campo, eval(model.to_s.downcase.classify).find(:all, *opcoes).collect {|i| [i.attributes[campo_exibicao],i.id]}
  end
end
