
/**
 * @author tshirtecommerce - www.tshirtecommerce.com
 * @date: 2016-03-09
 * 
 * @copyright  Copyright (C) 2015 tshirtecommerce.com. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE
 *
 */
  
jQuery('#price-type-color-tab').tab('show');

function printings_view_change( e ) {
	var value = jQuery( e ).val(),
		type = jQuery('#printing-form input[type="radio"]:checked').val();
	if ( value == 0 ) { // No
		jQuery('#price-type-' + type + '-tab ul.nav-tabs').addClass('hidden');
	} else { 			// Yes
		jQuery('#price-type-' + type + '-tab ul.nav-tabs').removeClass('hidden');
	}
}

function printings_change_number_color( e ) {
	var column 		= parseInt( jQuery( e ).find(':selected').text() ),
		front_table = '#color-view-front table',
		left_table  = '#color-view-left table',
		right_table = '#color-view-right table',
		back_table  = '#color-view-back table';

	printings_change_table_column( front_table, column, 'front' );	// for front view
	printings_change_table_column( left_table,  column, 'left' );	// for left view
	printings_change_table_column( right_table, column, 'right' );	// for right view
	printings_change_table_column( back_table,  column, 'back' );	// for back view
}

function printings_change_table_column( table, column, view ) {
	var i, col = jQuery( table + ' > thead' ).find('th').length - 2;
	
	var type = jQuery('#printing-form input[type="radio"]:checked').val();
	
	if ( col < column ) { // Add column
		for ( i = col + 1; i <= column; i++ ) {
			var th_col = '<th class="th-' + i + ' center">' + i + '</th>';
			
			jQuery( table + ' > thead th.th-last' ).before( th_col );
			
			jQuery( table + ' > tbody > tr' ).each( function() {
				var val 	= jQuery( this ).find('td:last').prev().find('input').val(),
					td_col 	= '<td class="td-' + i + 
						' center"><input name="' + type + '_prices_' + view + '[' + ( i - 1 ) + 
						'][]" onkeypress="return printings_validate_num(event, this)"' + 
						' class="form-control" type="text" value="' + val + 
						'" onblur="printings_check_blank(this)" /></td>';
				jQuery( this ).find('td.td-last').before( td_col );
			});
		}
	} else { // Remove column
		for ( i = col; i > column; i-- ) {
			jQuery( table + ' > thead th.th-' + i ).remove();
			jQuery( table + ' > tbody > tr' ).each( function() {
				jQuery( this ).find('td.td-' + i ).each( function(){ 
					jQuery( this ).remove();
				});
			});
		}
	}
}

function printings_change_table_row( e ) { // add row
	var table = jQuery( e ).parent().parent().find('table'),
		col   = jQuery( table ).find('th').length - 2,
		i 	  = 0,
		row	  = jQuery( table ).find('tr:last'),
		val_first = parseInt( jQuery( row ).find('td.td-first>input').val() ) + 5; // Step 5
	
	var type = jQuery('#printing-form input[type="radio"]:checked').val();
	
	var name_quantity,
		view  = jQuery( e ).parent().parent().attr('id').replace( type+ '-view-', '');
		
	
	
	if ( view == 'front' ) {
		name_quantity = type + '_quantity_front[]';
	} else if ( view == 'left' ) {
		name_quantity = type + '_quantity_left[]';
	} else if ( view == 'right' ) {
		name_quantity = type + '_quantity_right[]';
	} else {
		name_quantity = type + '_quantity_back[]';
	}
		
	var	html  = "<tr><td class='td-first center'>" + 
		"<input onkeypress='return printings_validate_num(event, this)' type='text' name='" + name_quantity + "'" +
		"class='form-control' value='" + val_first + "' onblur='printings_check_blank(this)' /></td>";

	if( col > 0 ) {
		for ( i = 1; i <= col; i++ ) {
			var val = jQuery( row ).find( 'td.td-' + i + '>input').val();
			html += "<td class='td-" + i + " center'><input type='text' name='" + type + "_prices_" + 
				view + "[" + ( i - 1 ) + "][]' onblur='printings_check_blank(this)'" + 
				"onkeypress='return printings_validate_num(event, this)' class='form-control' value='" + 
				val + "' /></td>"
		}
		html += "<td class='td-last center'><a href='javascript:void(0)' onclick='printings_remove_table_row(this)' " +
			"class='btn btn-danger btn-xs' title='Remove'><i class='fa fa-times'></i></a></td></tr>";
		
		jQuery( table ).find('tr:last').after( html );
	}
}

function printings_remove_table_row ( e ) {
	var table 		= jQuery( e ).parent().parent().parent().parent(),
		count_row   = jQuery( table ).find('tbody > tr').length,
		row 		= jQuery( e ).parent().parent();

	if ( count_row > 1 ) {
		jQuery( row ).remove();
	} else {
		alert('Can not remove all.');
	}
	
	return false;
}

function printing_validate_extra( evt, e ) {
	var charCode = ( evt.which ) ? evt.which : event.keyCode;
	if(charCode != 43 && charCode != 45 && (charCode != 46 || jQuery( e ).val().indexOf('.') != -1) && (charCode  < 48 || charCode > 57)) 
		return false;
	
	return true;
}

function printings_validate_num( evt, e ) {
	var charCode = ( evt.which ) ? evt.which : event.keyCode;
	if ( ! jQuery( e ).parent().hasClass('td-first') ) {	
		if ( ( charCode != 46 || jQuery( e ).val().indexOf('.') != -1 ) && ( charCode  < 48 || charCode > 57 ) ) {
			return false;
		}
	} else {
		if ( charCode  < 48 || charCode > 57 ) {
			return false;
		}
	}
	
	return true
}

function printings_check_blank( e ) {
	var val = jQuery( e ).val();
	if ( val.trim() == '' ) {
		jQuery( e ).val(0);
	}
}

function printings_change_price_type( e ) {
	var type = jQuery(e).val(),
		enable = jQuery('#printing-form select[name="printings_view"]').find('option:selected').val();
	
	if ( enable == 0 ) { // No
		jQuery('#price-type-' + type + '-tab ul.nav-tabs').addClass('hidden');
	} else { 			// Yes
		jQuery('#price-type-' + type + '-tab ul.nav-tabs').removeClass('hidden');
	}
	
	jQuery('.price-type-tab').addClass('hidden');
	jQuery('#price-type-' + type + '-tab').removeClass('hidden');
}
var productElm = {
	reset: function(){
		jQuery('.product-elm-title').val('');
		jQuery('.product-elm-colors a').removeClass('active');
		jQuery('#product-elm-modal-save').attr('onclick', 'productElm.save()');
	},
	addColor: function(e)
	{
		if (jQuery(e).hasClass('active'))
		{
			jQuery(e).removeClass('active');
		}
		else
		{
			jQuery(e).addClass('active');
		}
	},
	save: function(id){
		var title = jQuery('.product-elm-title').val();
		
		if (title == '')
		{
			alert('Please enter your title.');
			return false;
		}
		
		var colors = {}, i=0;
		jQuery('.product-elm-colors a').each(function(){
			if (jQuery(this).hasClass('active'))
			{
				colors[i] = {};
				colors[i].title = jQuery(this).attr('title');
				colors[i].color = jQuery(this).data('color');
				i++;
			}
		});
		if (colors.length == 0)
		{
			alert('Please choose color');
			return false;
		}
		
		if (typeof id == 'undefined')
		{
			var id = uniqId();
		}
		
		if (typeof elements[id] == 'undefined')
		{
			elements[id] = {};
		}
		
		elements[id].colors = colors;
		elements[id].title = title;
		
		var elm = {};
		elm.title = title;
		elm.id = id;
		this.addElm(elm);
		
		jQuery('.product-elm-modal').modal('hide');
	},
	setup: function(elms){
		jQuery('.product-elm-list').html('');
		for(var id in elms)
		{
			var e = {};
			e.id = id;
			e.title = elms[id].title;
			this.addElm(e);
		}
	},
	addElm: function(e){
		if (jQuery('#'+e.id).length > 0)
		{
			var button = jQuery('#'+e.id).children('button');
			jQuery(button[0]).html(e.title);
		}
		else
		{
			var html = '<div class="form-group">'
					+	'<div class="input-group-btn" id="'+e.id+'">'
					+		'<button type="button" onclick="productElm.setElm(this)" class="btn btn-default">'+e.title+'</button>'
					+		'<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></button>'
					+		'<ul class="dropdown-menu"><li><a href="javascript:void(0)" onclick="productElm.editElm('+e.id+')">Edit</a></li><li><a href="javascript:void(0)" onclick="productElm.removeElm('+e.id+')">Remove</a></li></ul>'
					+	'</div>'
					+'</div>';
			jQuery('.product-elm-list').append(html);
		}
	},
	editElm: function(id){
		if (typeof elements[id] != 'undefined')
		{
			if (typeof elements[id].title != 'undefined')
				var title = elements[id].title;
			else
				var title = '';
			
			if (typeof elements[id].colors != 'undefined')
				var colors = elements[id].colors;
			else
				var colors = {};
		}
		
		jQuery('.product-elm-title').val(title);
		
		var color_active = [];		
		for(var i in colors)
		{
			color_active[i] = colors[i].color;
		}	
		
		if (color_active.length > 0)
		{
			jQuery('.product-elm-colors a').each(function(){
				if (color_active.indexOf(jQuery(this).data('color')) != -1)
				{
					jQuery(this).addClass('active');
				}
				else
				{
					jQuery(this).removeClass('active');
				}
			});
		}
		
		jQuery('#product-elm-modal-save').attr('onclick', 'productElm.save('+id+')');
		
		jQuery('.product-elm-modal').modal('show');
	},
	removeElm: function(id){
		jQuery('#'+id).parent().remove();
		
		if (typeof elements[id] != 'undefined')
		{
			delete elements[id];
		}		
	},
	setElm: function(e){
		if (jQuery('#product-images .selected').length == 0)
		{
			alert('Please choose image of object');
			return false;
		}
		
		if (jQuery(e).hasClass('active'))
		{
			jQuery('.product-elm-list button').removeClass('active');
			jQuery('#product-images .selected').children('img').removeData('obj');
		}		
		else
		{
			jQuery('.product-elm-list button').removeClass('active');
			jQuery(e).addClass('active');
			var id = jQuery(e).parent().attr('id');
			jQuery('#product-images .selected').children('img').data('obj', id);
		}
	}
}

function uniqId() {
  return Math.round(new Date().getTime() + (Math.random() * 100));
}

// save each image
jQuery(document).on("save.item.product", function( event, item, e ){
	var obj = e.find('img').data('obj');
	if(obj != 'undefined')
	{
		item.obj = obj;
	}
	return item;
});

// load image design
jQuery(document).on('load.item.product', function(event, img, item){
	if (typeof item.obj != 'undefined')
	{
		jQuery(img).data('obj', item.obj);
	}
});

// choose and add elment
jQuery(document).on("design.item.product", function( event, item ){
	var id = jQuery('#product-images .selected').children('img').data('obj');
	
	jQuery('.product-elm-list button').removeClass('active');
	
	if (id != 'undefined')
	{
		jQuery('#'+id+' button:first-child').addClass('active');
	}
	
	var id = jQuery(item).attr('id');
	if (!jQuery('#item-'+id).hasClass('active'))
	{
		jQuery('#layers .layer').removeClass('active');
		jQuery('#item-'+id).addClass('active');
	}
});

// click choose layers
jQuery(document).on('add.layer', function(event, item){
	jQuery(item).on('click', function(){
		jQuery('#layers .layer').removeClass('active');
		jQuery(this).addClass('active');
		
		var layer = jQuery(this).attr('id');		
		var index = layer.replace('item-', '');
		
		jQuery('.product-design-view').find('.selected').resizable("destroy").draggable("destroy");
		jQuery('.product-design-view').find('.product-image').removeClass('selected');
		jQuery('.product-design-view').find('#area-design').removeClass('selected');
		
		jQuery('#'+index).addClass('selected');
		
		if (index == 'area-design')
		{
			if( jQuery('.area-locked-width').is(':checked') == true && jQuery('.area-locked-height').is(':checked') == true )
				var aspect = true;
			else var aspect = false;
			jQuery('#area-design').resizable({ handles: "ne, se, sw, nw", aspectRatio:aspect, 
				resize: function(event, ui){ dgUI.product.area(aspect, ui); },
				start: function( event, ui ) { areaZoom = jQuery('.area-width').val() / jQuery('#area-design').width(); }
			}).draggable({containment: "parent"});
		}
		else
		{
			jQuery('#product-images .selected').resizable({ handles: "ne, se, sw, nw", resize: function( event, ui ) {
				jQuery(this).children('img').attr('width', ui.size.width);
				jQuery(this).children('img').attr('height', ui.size.height);
			} }).draggable();
			jQuery(document).triggerHandler( "design.item.product", jQuery('#product-images .selected'));
		}
	});
});

// load elements
jQuery(document).on('load.design.product', function(){
	jQuery('#product-designer-options').perfectScrollbar();
	
	if (jQuery('#products-design-elements').length > 0)
	{
		var string = jQuery('#products-design-elements').val();
		var elements_string = string.replace(/'/g, '"');
		elements = jQuery.parseJSON(elements_string);
		productElm.setup(elements);
	}
});

// save list elements
jQuery(document).on('save.design.product', function(event, product){
	if(typeof elements != 'undefined')
	{
		var elements_string = JSON.stringify(elements);
		elements_string = elements_string.replace(/"/g, "'");
		if (jQuery('#products-design-elements').length == 0)
		{
			jQuery('.table-responsive').append('<input type="hidden" value="" id="products-design-elements" name="product[design][elements]">');
		}
		
		jQuery('#products-design-elements').val(elements_string);
	}
});
//@deprecated
/* @deprecate */
var store = {
	idea:{
		remove: function(e){
			if (typeof e == 'undefined')
			{
				var ids = [], i = 0;
				jQuery('.idea-remove').each(function(){
					if(jQuery(this).is(':checked'))
					{
						ids[i] = jQuery(this).val();
						i++;
					}
				});
				if (ids.length == 0)
				{
					alert('Please tick choose design you want remove.');
					return false;
				}
				
				var check = confirm('You sure want remove?');
				if(check == true)
				{
					jQuery('.idea-remove').each(function(){
						if(jQuery(this).is(':checked'))
						{
							jQuery(this).parents('.box-art').hide('slow', function(){
								jQuery(this).remove();
							});
						}
					});
					
					jQuery.ajax({
						method: "POST",
						url: admin_url_site + "index.php?/store/remove/ideas",
						data: { ids: ids }
					}).done(function(){});
				}
				return false;
			}
			
			if (jQuery(e).is(':checked'))
			{
				jQuery(e).parents('.box-art').css('opacity', '0.3');
			}
			else
			{
				jQuery(e).parents('.box-art').css('opacity', '1');
			}
		},
		featured: function(e){
			var check = jQuery(e).data('featured');
			if (check == 1)
			{
				jQuery(e).html('<i class="fa fa-star-o"></i>');
				jQuery(e).data('featured', 0);
				jQuery(e).attr('title', 'Unfeatured');
				var is_featured = 0;
			}
			else
			{
				jQuery(e).html('<i class="fa fa-star color-success"></i>');
				jQuery(e).data('featured', 1);
				jQuery(e).attr('title', 'Featured');
				var is_featured = 1;
			}
			var id = jQuery(e).data('id');
			jQuery.ajax({
				method: "POST",
				url: admin_url_site + "index.php?/store/featured/idea/"+id+"/"+is_featured,
				data: { id: id }
			}).done(function(){});
		}
	},
	art:{
		remove: function(e){
			if (typeof e == 'undefined')
			{
				var ids = [], i = 0;
				jQuery('.art-remove').each(function(){
					if(jQuery(this).is(':checked'))
					{
						ids[i] = jQuery(this).val();
						i++;
					}
				});
				if (ids.length == 0)
				{
					alert('Please tick choose clipart you want remove.');
					return false;
				}
				
				var check = confirm('You sure want remove?');
				if(check == true)
				{
					jQuery('.art-remove').each(function(){
						if(jQuery(this).is(':checked'))
						{
							jQuery(this).parents('.box-art').hide('slow', function(){
								jQuery(this).remove();
							});
						}
					});
					
					jQuery.ajax({
						method: "POST",
						url: admin_url_site + "index.php?/store/remove/art",
						data: { ids: ids }
					}).done(function(){});
				}
				return false;
			}
			
			if (jQuery(e).is(':checked'))
			{
				jQuery(e).parents('.box-art').css('opacity', '0.3');
			}
			else
			{
				jQuery(e).parents('.box-art').css('opacity', '1');
			}
		},
		featured: function(e){
			var check = jQuery(e).data('featured');
			if (check == 1)
			{
				jQuery(e).html('<i class="fa fa-star-o"></i>');
				jQuery(e).data('featured', 0);
				jQuery(e).attr('title', 'Unfeatured');
				var is_featured = 0;
			}
			else
			{
				jQuery(e).html('<i class="fa fa-star color-success"></i>');
				jQuery(e).data('featured', 1);
				jQuery(e).attr('title', 'Featured');
				var is_featured = 1;
			}
			var id = jQuery(e).data('id');
			jQuery.ajax({
				method: "POST",
				url: admin_url_site + "index.php?/store/featured/art/"+id+"/"+is_featured,
				data: { id: id }
			}).done(function(){});
		},
		page: function(){
			
		},
		categories: function(e){
			var id = jQuery(e).val();
			var parents = true;
			if(id == 0)
			{
				parents = false;
			}			
			
			if(typeof store_categories[id] == 'undefined')
			{
				parents = false;
			}
			
			if (parents == false)
			{
				jQuery('.art-subcategories').html('<option value="0"> - choose a category - </option>');
			}
			else
			{
				var html = '';
				jQuery.each(store_categories[id], function(key, value){
					html = html + '<option value="'+key+'">'+value+'</option>';
				});
				jQuery('.art-subcategories').html(html);
			}
		}		
	},
	charts:{
		ini: function(){
			var div = jQuery('.control-panel-box');
			if (div.length > 0)
			{
				this.views(div);
			}
		},
		search: function(type){
			var div = jQuery('#top-search-'+type);
			if (div.length == 0) return false;
			
			jQuery('.top-search').hide();
			jQuery('.btn-top-search').removeClass('active');
			jQuery('.btn-top-search-'+type).addClass('active');
			div.show();
			div.html('');
			
			jQuery.ajax({
				method: "GET",
				url: admin_url_site + "index.php?/store_charts/search/"+type,			
			}).done(function( txt ) {
				if (txt == '') return false;
				var data = eval ("(" + txt + ")");
				for(i=0; i<data.length; i++)
				{
					var index = i + 1;
					div.append('<tr><td>'+index+'</td><td><a href="#">'+data[i].keyword+'</a></td><td>'+data[i].count+'</td></tr>');
				}
			});
		},
		sales: function(type){
			var div = jQuery('#top-sales-'+type);
			if (div.length == 0) return false;
			
			jQuery('.top-sales').hide();
			jQuery('.btn-top-sales').removeClass('active');
			jQuery('.btn-top-sales-'+type).addClass('active');
			div.show();
			div.html('');
			
			jQuery.ajax({
				method: "GET",
				url: admin_url_site + "index.php?/store_charts/sales/"+type,			
			}).done(function( txt ) {
				if (txt == '') return false;
				var data = eval ("(" + txt + ")");
				for(i=0; i<data.length; i++)
				{
					var index = i + 1;
					var html = '<tr>'
									+ '<td>'+index+'</td>'
									+ '<td>'
										+ '<div class="row"><div class="col-xs-4"><a class="img-thumbnail" href="'+admin_url_site+'index.php?/store/edit/arts/8130"><img width="50" src="'+data[i].thumb+'"></a></div>'
										+ '<div class="col-xs-8"> <strong>'+data[i].title+'</strong><br />'
										+ ' <strong>Price: '+data[i].price+' Credits</strong></div>'
									+ '</div></td>'
									+ '<td>'+data[i].date+'</td>'
									+ '<td>'+data[i].count+'</td>'
								+'</tr>';
					div.append(html);
				}
			});
		},
		views: function(div){
			jQuery.ajax({
				method: "GET",
				url: admin_url_site + "index.php?/store_charts/views/",			
			}).done(function( txt ) {
				if (txt != '')
				{
					var data = eval ("(" + txt + ")");
					div.append('<div class="row"><div class="col-md-12"><hr />'
						+'<div class="panel panel-default">'
						+	'<div class="panel-heading"><i class="clip-stats"></i> Arts Used</div>'
						+	'<div class="panel-body"><canvas id="charts-views" width="800" height="400"></canvas></div>'
						+'</div></div></div>');
					if (data.max > 10)
					{
						var step = '-';
					}
					else
					{
						var step = '1';
					}
					var dataView = {
						labels: data.dates,
						datasets: [
							{
								label: "Arts used",
								fill: false,
								backgroundColor: "rgba(220,220,220,0.2)",
								borderColor: "#EB6355",
								borderCapStyle: 'butt',
								borderDash: [],
								borderDashOffset: 0,
								borderJoinStyle: 'miter',
								pointBorderColor: "#EB6355",
								pointBackgroundColor: "#EB6355",
								pointBorderWidth: 2,
								pointHoverRadius: 5,
								pointHoverBackgroundColor: "#EB6355",
								pointHoverBorderColor: "#EB6355",
								pointHoverBorderWidth: 3,
								lineTension:10,
								data: data.views,
								yAxisID: "y-axis-0",
							}				
						]
					};
					var ctx = document.getElementById("charts-views").getContext("2d");
					var myChart = new Chart(ctx, {
						type: 'line',
						data: dataView,
						options: {
							scales: {
								yAxes: [{
									ticks: {
										beginAtZero:true,
										stepSize: step
									}
								}]
							}
						}
					});					
				}
			});
		}
	}
}
jQuery(document).ready(function(){
	jQuery('.list-tree a.cate-parent').click(function(){
		var elm = jQuery(this).find('.folder-plus');
		jQuery(this).parent().find('.list-tree-children').toggle("slow", function() {
			if(jQuery(this).is(':visible'))
			{
				elm.html('<i class="clip-minus-circle"></i>');
			}
			else
			{
				elm.html('<i class="clip-plus-circle"></i>');
			}
		});		
	});
	
	jQuery( ".list-tree-children" ).sortable({
		connectWith: ".list-tree-children",
		handle: ".tool-sort",
		placeholder: "ui-state-highlight",
		stop: function(event, ui){
			jQuery('.btn-save').show();
		}
	});
	
	jQuery( ".list-tree" ).sortable({
		connectWith: ".list-tree",
		handle: ".tool-sort",
		placeholder: "ui-state-highlight",
		stop: function(event, ui){
			jQuery('.btn-save').show();
		}
	});
	
	jQuery( ".list-tree-children li" ).disableSelection();
});

function removeCategory(e, type)
{
	var parent 	= jQuery(e).parent().parent();
	var id 		= parent.data('id');
	
	var txt 	= 'You sure want remove this category?';
	if(parent.hasClass('list-tree-parent'))
	{
		txt		= txt + ' System will remove all categories children.';
	}
	var check 	= confirm(txt);
	if (check == true)
	{
		parent.hide('slow', function(){
			parent.remove();
		});
		
		jQuery.ajax({
			method: "POST",
			url: admin_url_site + "index.php?/store/removeCategory/"+type,
			data: { id: id }
		})
		.done(function( msg ) {});
	}
}

function storeCategories(e, type)
{
	var btn = jQuery(e).button('loading');
	
	var categories = '';
	jQuery('.list-tree-parent').each(function(){
		var id = jQuery(this).data('id');
		if (id != '' && id != 'undefined')
		{
			if (categories == '')
				categories = id+':';
			else
				categories = categories +';'+ id +':';
			jQuery(this).find('.cate-children').each(function(){
				categories = categories + jQuery(this).data('id')+',';
			});
		}
	});
	jQuery.ajax({
		method: "POST",
		url: admin_url_site + "index.php?/store/sortCategories/"+type,
		data: { categories: categories }
	})
	.done(function( msg ) {
		btn.button('reset');
		jQuery(e).hide();
	});
}
jQuery(document).ready(function() {
	if (jQuery( ".main-status" ).length > 0)
	{
		jQuery.ajax({
			method: "POST",
			url: admin_url_site + "update.php",
			dataType: "json",
			data: { url: admin_url_site }
		}).done(function( html ) {
			if (html != '')
			{
				jQuery( ".main-status" ).append( html.content );
				var li = '<a href="javascript:void(0);" onclick="openUpdate(\''+html.url+'\')"><span class="label label-warning"><i class="fa fa-download" style="color: #fff;"></i></span><span class="message"> Version '+html.version+' is available!</span></a>';
				notifications(li)
			}
		});
	}
});

function openUpdate(url)
{
	if (url != '#')
		window.top.location.href = url;
}

function notifications(html)
{
	var elm = jQuery('.notifications');
	if (typeof html != 'undefined')
	{
		elm.append('<li><div class="drop-down-wrapper ps-container"><ul><li>'+html+'</li></ul></div></li>');
	}
	var count = jQuery('.notifications').children('li').length;
	count = count - 1;
	jQuery('.notification-badge-count').html(count);
}
