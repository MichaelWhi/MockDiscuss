# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('.best_in_place').best_in_place()
  $('#new_mock').fileupload
    dataType: "script"
    add: (e, data) ->
      types = /(\.|\/)(gif|jpe?g|png|pdf|ico|bmp|tif?f)$/i
      file = data.files[0]
      if types.test(file.type) || types.test(file.name)
        data.context = $($.parseHTML($.trim(tmpl("template-upload", file))))
        $('#new_mock').append(data.context)
        data.submit()
      else
        alert("#{file.name} is not a gif, jpeg, ico, tiff, pdf or png image file")
    progress: (e, data) ->
      if data.context
        progress = parseInt(data.loaded / data.total * 100, 10)
        data.context.find('progress').val progress
        data.context.find('.downloadProgress').text(progress + '%')