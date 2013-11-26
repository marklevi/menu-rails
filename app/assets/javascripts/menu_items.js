var MenuItems = {
	init: function(){
		$(".menus").on("ajax:success", '.closed a', this.openMenuItems)
		$(".menus").on("ajax:success", '.open a', this.closeMenuItems)
		$(".menus").on("ajax:success", 'form', this.addMenuItems)
	},

	openMenuItems: function(e, data){
		var itemDiv = MenuItems.getItemDiv(e)
		$(itemDiv).html(data).hide()
		MenuItems.toggleItems(itemDiv)
	},

	closeMenuItems: function(e){
		var itemDiv = MenuItems.getItemDiv(e)
		MenuItems.toggleItems(itemDiv)
	},

	toggleItems: function(itemDiv){
		$(itemDiv).closest('li').toggleClass('closed').toggleClass('open')
		$(itemDiv).slideToggle()		
	},

	addMenuItems: function(e, data){
		var itemDiv = MenuItems.getItemDiv(e)
		itemDiv.append('<p>Name: ' + data['name'] + ' Price: ' + data['price'] + '</p>')
	},

	getItemDiv: function(e){
		return $(e.target).closest('li').find('.menu_items')
	}
}

$(function(){
	MenuItems.init()
})
