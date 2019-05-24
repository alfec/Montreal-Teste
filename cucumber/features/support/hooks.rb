

After do |scenario|
  # tira um print por favor
  file_name = scenario.name.tr(' ', '_').downcase!
  shot = "logs/shots/#{file_name}.png"
  page.save_screenshot(shot)
  embed(shot, 'image/png', 'Clique aqui para ver o print do teste')
end
