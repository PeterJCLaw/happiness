
$ = jQuery

editor = null
modes = null
projects = null

# log the page load
$ ->
	$.log('beans')
	addModes()
	setupProjects()
	# this is the default
	$('#dashboard').show()

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
		if mode.id == 'edit'
			launchEditor()
		else if mode.id == 'docs'
			launchDocs()

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

launchDocs = () ->
	docsHome =  'https://www.studentrobotics.org/docs/'
	frame = $('#docs-frame')[0]
	if frame.src != docsHome
		frame.src = docsHome

launchEditor = () ->
	if editor == null
		editor = ace.edit('editor')
