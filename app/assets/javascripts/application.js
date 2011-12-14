// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
jQuery(document).ready(function() {
// Carregar os mimimis
	$.ajax({
		url: "/mimimis",
		type: "GET",
		dataType: "html",
		success: function(data, textStatus, xhr) {
			$('#mimimis-featured').append(data);
		},
		error: function() {
		}
	});
// Carregar os vdms
	$.ajax({
		url: "/vdms",
		type: "GET",
		dataType: "html",
		success: function(data, textStatus, xhr) {
			$('#vdms-featured').append(data);
		},
		error: function() {
		}
	});
// Carregar os fails
	$.ajax({
		url: "/fails",
		type: "GET",
		dataType: "html",
		success: function(data, textStatus, xhr) {
			$('#fails-featured').append(data);
		},
		error: function() {
		}
	});
// Carregar os porras
	$.ajax({
		url: "/porras",
		type: "GET",
		dataType: "html",
		success: function(data, textStatus, xhr) {
			$('#porras-featured').append(data);
		},
		error: function() {
		}
	});
// Carregar os affs
	$.ajax({
		url: "/affs",
		type: "GET",
		dataType: "html",
		success: function(data, textStatus, xhr) {
			$('#affs-featured').append(data);
		},
		error: function() {
		}
	});
});
