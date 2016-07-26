 $(document).on("ready", function(){
 	$("#js-getcharacters").on("click", function(){
 		getCharacters();
 	});

 	function getCharacters(){
 		$.ajax({
 			type: "GET",
 			url: "https://ironhack-characters.herokuapp.com/characters",
 			success: function(response){
 				showCharacters(response);
 			},
 			error: handleError
 		});
 	}

 	function handleError(error){
 		console.log("Error!");
 		console.log(error.responseText);
 	}

 	function showCharacters(response){
 		var $characterList = $('#js-character');
 		$characterList.empty();

 		response.forEach(function(theCharacter){
 			var html = ` <li>
 							<h2> ${theCharacter.name} </h2>
 									<h5> <strong>Occupation:</strong> ${theCharacter.occupation} </h5>
 								<h5><strong> Weapon:</strong> ${theCharacter.weapon} </h5>
 						</li>
 					`;
 			$characterList.append(html);			
 		});
 	};

 	$("#js-form").on("submit", function(event){
        event.preventDefault();
           var emptycounter = 0
            $(".js-required").each(function(index, ele){
                  if ($(ele).val() === "") {
                        emptycounter++
                  };
			});
			if (emptycounter === 0){
				var newCharacter = { name: $("#js-name").val(),
									 occupation: $("#js-occupation").val(),
									 weapon: $("#js-weapon").val(),
									 debt: $("#js-debt").val()
									}
				$.ajax({
					type: "POST",
 					url: "https://ironhack-characters.herokuapp.com/characters",
					data: newCharacter,
					success: updateList,
					error: handleError
				});

				function updateList(response){
					getCharacters();
				}
			};
    });





 });