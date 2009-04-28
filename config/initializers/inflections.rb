# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format 
# (all these examples are active by default):
ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
  inflect.irregular 'cor', 'cores'
  inflect.irregular 'notafiscal', 'notasfiscais'
  inflect.irregular 'itemnotafiscal', 'itensnotasfiscais'
  inflect.irregular 'expedicao','expedicoes'
  inflect.irregular 'regiao','regioes'
  inflect.irregular 'item', 'itens'
#   inflect.uncountable %w( fish sheep )
end
