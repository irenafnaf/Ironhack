 // $('.hello-button').on('click', function () {
 //        alert('hello world')
 //      })
 //      var price ='<p> Only $399.99</p>';
 //      $('.container').append(price);

 //      var name = "<p> I'm Irene. I'm Prepending.</p>";
 //      $('.container').prepend(name);

 //      var lastName = "<p> My Last Name is Fernandez. I'm using before function.</p>"; 
 //      $('.lastname').before(lastName);

 //      var after = "<p> I like tacos better. I'm using after function.</p>";
 //      $('.pizza').after(after);

 $(document).on("ready", function(){
      $(".js-newbutton").on("click", function(){
            $(".3").fadeOut();
      });

      $(".js-coloring").on("click", function(){
            $(".3").addClass("unicorn-mode");
      })

      $("#js-form").on("submit", function(event){
            event.preventDefault();
           var emptycounter = 0
            $("input").each(function(index, ele){
                  if $(ele).val() === ""{
                        emptycounter++
                  }

            })
      })

 });