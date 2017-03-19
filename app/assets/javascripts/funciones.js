function estudio(sel) {
  if (sel.value=="estudiante"){
    divC = document.getElementById("curso");
    divC.style.display = "";

    divT = document.getElementById("semestre");
    divT.style.display = "none";

  }else if (sel.value=="universitario"){
    divC = document.getElementById("curso");
    divC.style.display="none";

    divT = document.getElementById("semestre");
    divT.style.display = "";
  }else{

    divC = document.getElementById("curso");
    divC.style.display="none";

    divT = document.getElementById("semestre");
    divT.style.display = "none";
  }
}

$(document).ready(function(){
    
    $('.delete_product').click(function(e){
      
      e.preventDefault();
      
      var pid = $(this).attr('data-id');
      var parent = $(this).parent("td").parent("tr");
      
      bootbox.dialog({
        message: "Are you sure you want to Delete ?",
        title: "<i class='glyphicon glyphicon-trash'></i> Delete !",
        buttons: {
        success: {
          label: "No",
          className: "btn-success",
          callback: function() {
           $('.bootbox').modal('hide');
          }
        },
        danger: {
          label: "Delete!",
          className: "btn-danger",
          callback: function() {
            
            
            $.ajax({
              
              type: 'POST',
              url: 'delete_app.php',
              data: 'delete='+pid
              
            })
            .done(function(response){
              
              bootbox.alert(response);
              parent.fadeOut('slow');
              
            })
            .fail(function(){
              
              bootbox.alert('Something Went Wrong ....');
                            
            })
                        
          }
        }
        }
      });
      
      
    });
    
  });