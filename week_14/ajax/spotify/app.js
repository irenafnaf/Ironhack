$(document).on("ready", function(){
 	$("#js-form").on("submit", function(event){
 		event.preventDefault();
 		getArtists();
 	});

 	function getArtists(){
 		var searchTerm = $("#js-artist").val();
 		$.ajax({
 			type: "GET",
 			url: 'https://api.spotify.com/v1/search?type=artist&query='+ searchTerm,
 			success: function(response){
 				console.log(response);
 				showArtist(response);
 			},
 			error: artistError
 		});
 	};

 	function artistError(error){
 		console.log("Error!");
 		console.log(error);
 		console.log(error.responseText);
 	};

 	function showArtist(response){
 		var $artistList = $("#js-artistlist");
 		var artist = response.artists.items;

 		artist.forEach(function(obj, idx){
 			appendArtist(obj);
 		})
 	};

 	function appendArtist(obj){
 		var artistImage;

 			 	if (obj.images[2]){
 				 	artistImage = obj.images[2].url
 				} else {
 					artistImage = "http://placehold.it/200x200"
 				}
 			
 			var html = ` <li>
 							<h3>${obj.name}</h3>

 							<img src=${artistImage}>
 						</li>

 						 `;
 			$artistList.append(html);
 	};


 		
});
