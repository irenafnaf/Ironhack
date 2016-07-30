$(document).on("ready", function(){
 	
 	$("#js-form").on("submit", function(event){
 		event.preventDefault();
 		getArtists();
 	});


	$("#js-artistlist").on("click", ".artist-li", function(event){
		// console.log("Clicked");
		// use data attribute to get artist id out if <li>
		var artistId = $(event.currentTarget).data("artist-id");
		// console.log(artistId);
		var artistName = $(event.currentTarget).data("artist-name");
		
		$.ajax({
			url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
			success: function(response){
				showAlbums(response, artistName);
			},
			error: albumError,
		})
	})


	function showAlbums(response, artistName){
		console.log(response);
		$(".modal-artist-name").text(artistName);
		
		var albums = response.items;
		
		albums.forEach(appendAlbum);
		$(".modal").modal("show");
	}

	function appendAlbum (album){
		 	var html = ` <li class="album-li" data-artist-id=${obj.id} data-album-name="${obj.name}">
 									<p>${obj.name}</p>

 								</li>
						 `;
			$(".modal-artist-albums").append(html);
	}


	function albumError(err){
		console.log(err);
	}


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
 		$artistList.empty();
 	};

 	function appendArtist(obj){
 		var $artistList = $("#js-artistlist");

 		var artistImage;

 			 	if (obj.images[2]){
 				 	artistImage = obj.images[2].url
 				} else {
 					artistImage = "http://placehold.it/200x200"
 				}
 			
 			var html = ` <li class="artist-li" data-artist-id=${obj.id} data-artist-name="${obj.name}">
 							<h3>${obj.name}</h3>

 							<img src=${artistImage}>
 						</li>

 						 `;
 			$artistList.append(html);
 	};


 		
