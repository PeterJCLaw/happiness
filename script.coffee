
$ = jQuery

modes = null
projects = null

/* log the page load */
$ ->
	$.log('beans')
	addModes()
	setupProjects()

addModes = () ->
	modes = $('#right .mode')
	addMode mode for mode in modes
	modes.hide()

addMode = (mode) ->
	id = 'button-' + mode.id
	button = $('<li><button id="'+id+'">'+mode.id+'</li>')
	$('#mode-select').append(button)
	button.click ->
		modes.hide()
		$(mode).show()

setupProjects = () ->
	projects = $('#projects > li > a')
	parents = projects.parent()
	$.log(projects)
	projects.click ->
		$.log(this)
		expanded = 'expanded'
		collapsed = 'collapsed'
		parents.removeClass(expanded).addClass(collapsed)
		$(this).parent().addClass(expanded).removeClass(collapsed)
		return false;
