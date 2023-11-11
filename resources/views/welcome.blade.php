@extends("layouts.template")
@section("title","Usuarios")
<br>
@section("crudUsuarios")
    <table class="table table-striped" id="usuarios">
        <p>
            <button data-bs-toggle="modal" data-bs-target="#agregarUsuario" class="btn btn-primary"> <i class="fa-solid fa-user-plus"></i> Agregar nuevo usuario </button>
        </p>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Email</th>
                <th>Direccion</th>
                <th>Telefono</th>
                <th>Fecha de nacimiento</th>
                <th>Edad</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody id="infoUsuarios">

        </tbody>
    </table>

    <div class="modal" tabindex="-1" id="agregarUsuario">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Agregar usuario</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="#" method="POST">
                    @csrf
                    <label for="">Nombre</label>
                    <input type="text" id="nombre" class="form-control" required>
                    <label for="">Email</label>
                    <input type="email" id="email" class="form-control" required>
                    <label for="">Password</label>
                    <input type="password" id="password" class="form-control" required>
                    <label for="">Direccion</label>
                    <input type="text" id="direccion" class="form-control" required>
                    <label for="">Telefono</label>
                    <input type="text" id="telefono" class="form-control" required>
                    <label for="">Fecha de nacimiento</label>
                    <input type="date" id="fecha_nacimiento" class="form-control" required>
                    <br>
                </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
              <button type="button" class="btn btn-primary" id="btn-guardar">Guardar</button>
            </div>
          </div>
        </div>
      </div>

      <div class="modal" tabindex="-1" id="editarUsuario">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Editar usuario</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="#" method="POST">
                    @csrf
                    <input type="hidden" id="idE" class="form-control" required>
                    <label for="">Nombre</label>
                    <input type="text" id="nombreE" class="form-control" required>
                    <label for="">Email</label>
                    <input type="email" id="emailE" class="form-control" required>
                    <label for="">Password</label>
                    <input type="password" id="passwordE" class="form-control" required>
                    <label for="">Direccion</label>
                    <input type="text" id="direccionE" class="form-control" required>
                    <label for="">Telefono</label>
                    <input type="text" id="telefonoE" class="form-control" required>
                    <label for="">Fecha de nacimiento</label>
                    <input type="date" id="fecha_nacimientoE" class="form-control" required>
                    <br>
                </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
              <button type="button" class="btn btn-primary" id="btn-guardarE">Guardar</button>
            </div>
          </div>
        </div>
      </div>

@endsection
@section("scripts")
    <script>
    $(document).ready(function() {
        usersView();
    })
    function usersView() {
        $("#infoUsuarios").html(
            ''
        )
        $.ajax({
            url: "{{route('usuarios.index')}}",
            type: "GET",
            success: function(data){
                $respuesta = data;
                $respuesta.forEach((usuario) => {
                    $("#infoUsuarios").html(
                        $("#infoUsuarios").html()+`
                        <tr>
                            <td>${usuario['name']}</td>
                            <td>${usuario['email']}</td>
                            <td>${usuario['direccion']}</td>
                            <td>${usuario['telefono']}</td>
                            <td>${usuario['fecha_nacimiento']}</td>
                            <td>${usuario['edad']}</td>
                            <td>
                                <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#editarUsuario" onclick='editar(${usuario['id']})'> <span class="fa-regular fa-pen-to-square"></span></button>
                                <button class="btn btn-danger btn-sm" onclick='eliminar(${usuario['id']})'> <span class="fa-solid fa-trash"></span></button>
                            </td>
                        </tr>`
                    )
                })
            }
        })
        // let datatableUsuarios = $("usuarios").DataTable();
        // datatableUsuarios.clear().draw();
        // datatableUsuarios=$("usuarios").DataTable({
        //     pageLength:10,
        //     ajax:{
        //         url:"{{route('usuarios.index')}}",
        //         method:"GET",
        //         dataType:"json",
        //         data:{
        //             data:0
        //         }
        //     },
        //     dom:"Brtip",
        //     columns:[
        //         {
        //             data: "name",
        //             name: "name",
        //         },
        //         {
        //             data: "email",
        //             name: "email",
        //         },
        //         {
        //             data: "direccion",
        //             name: "direccion",
        //         },
        //         {
        //             data: "telefono",
        //             name: "telefono",
        //         },
        //         {
        //             data: "fecha_nacimiento",
        //             name: "fecha_nacimiento",
        //         },
        //         {
        //             data: "edad",
        //             name: "edad",
        //         },
        //         {
        //             data: null,
        //             name: "Acciones",
        //             orderable: false,
        //             render: function(data, type, row){
        //                 return `<button class="btn btn-warning btn-sm"> <span class="fa-regular fa-pen-to-square"></span></button>
        //                 <button class="btn btn-danger btn-sm"> <span class="fa-solid fa-trash"></span></button>`;

        //             }
        //         }
        //     ],
        //     buttons: [
        //         {
        //             text: "Recargar tabla",
        //             classname: "btn btn-info",
        //             action: function(e,dt,node,config){
        //                 usersView();
        //             }
        //         }
        //     ]
        // });
    }

    $("#btn-guardar").on("click", function(){
        if($("#nombre").val().length<1 || $("#email").val().length<1 || $("#password").val().length<1 || $("#direccion").val().length<1 || $("#telefono").val().length<1 || $("#fecha_nacimiento").val().length<1){
            Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'Debes llenar el formulario.',
                        showCancelButton: false,
                        confirmButtonText: 'Aceptar'
                    })
            return;
        }
        let datos = new FormData();
        datos.append("_token",'{{csrf_token()}}');
        datos.append("name", $("#nombre").val());
        datos.append("email", $("#email").val());
        datos.append("password", $("#password").val());
        datos.append("direccion", $("#direccion").val());
        datos.append("telefono", $("#telefono").val());
        datos.append("fecha_nacimiento", $("#fecha_nacimiento").val());
        $.ajax({
            url: '{{route("usuarios.create")}}',
            type: 'POST',
            data: datos,
            contentType: false,
            processData: false,
            success: function(data){
                if(data['user']== true){
                    Swal.fire({
                        icon: 'success',
                        title: 'Exito!',
                        text: 'Usuario creado exitosamente.',
                        showCancelButton: false,
                        confirmButtonText: 'Aceptar'
                    }).then(result=>{
                        usersView();
                    });
                }else{
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'No se ha podido crear el usuario.',
                        showCancelButton: false,
                        confirmButtonText: 'Aceptar'
                    })
                }
                if(data['info']== false){
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'No se ha podido crear la informacion del usuario.',
                        showCancelButton: false,
                        confirmButtonText: 'Aceptar'
                    })
                }
                $("#agregarUsuario").modal('hide');
            }
        })
    });

    function eliminar(id) {
        let datos = new FormData();
        datos.append("_token",'{{csrf_token()}}');
        datos.append("id",id);
        $.ajax({
            url: '{{route("usuarios.destroy")}}',
            type: 'POST',
            data: datos,
            contentType: false,
            processData: false,

            success: function(data){
                if(data['user']== true){
                    Swal.fire({
                        icon: 'success',
                        title: 'Exito!',
                        text: 'Usuario eliminado exitosamente.',
                        showCancelButton: false,
                        confirmButtonText: 'Aceptar'

                    }).then(result=>{
                        usersView();
                    });
                }else{
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'No se ha podido eliminar el usuario.',
                        showCancelButton: false,
                        confirmButtonText: 'Aceptar'
                    })
                }
            }
        })
    }


    function editar(id){
        $.ajax({
            url: `/show/${id}`,
            type: 'GET',

            success: function(data){
                 $("#idE").val(id);
                 $("#nombreE").val(data[0]["name"]);
                 $("#emailE").val(data[0]["email"]);
                 $("#passwordE").val(data[0]["password"]);
                 $("#direccionE").val(data[0]["direccion"]);
                 $("#telefonoE").val(data[0]["telefono"]);
                 $("#fecha_nacimientoE").val(data[0]["fecha_nacimiento"]);
            }
        })
    }

    $("#btn-guardarE").on("click", function(){
        if($("#nombreE").val().length<1 || $("#emailE").val().length<1 || $("#passwordE").val().length<1 || $("#direccionE").val().length<1 || $("#telefonoE").val().length<1 || $("#fecha_nacimientoE").val().length<1){
            Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'Debes llenar el formulario.',
                        showCancelButton: false,
                        confirmButtonText: 'Aceptar'
                    })
            return;
            }
        let datos = new FormData();
        datos.append("_token",'{{csrf_token()}}');
        datos.append("id", $("#idE").val());
        datos.append("name", $("#nombreE").val());
        datos.append("email", $("#emailE").val());
        datos.append("password", $("#passwordE").val());
        datos.append("direccion", $("#direccionE").val());
        datos.append("telefono", $("#telefonoE").val());
        datos.append("fecha_nacimiento", $("#fecha_nacimientoE").val());
        $.ajax({
            url: '{{route("usuarios.update")}}',
            type: 'POST',
            data: datos,
            contentType: false,
            processData: false,
            success: function(data){
                if(data['user']== true){
                    Swal.fire({
                        icon: 'success',
                        title: 'Exito!',
                        text: 'Usuario modificado exitosamente.',
                        showCancelButton: false,
                        confirmButtonText: 'Aceptar'
                    }).then(result=>{
                        usersView();
                    });
                }else{
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'No se ha podido modificar el usuario.',
                        showCancelButton: false,
                        confirmButtonText: 'Aceptar'
                    })
                }
                if(data['info']== false){
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'No se ha podido crear la informacion del usuario.',
                        showCancelButton: false,
                        confirmButtonText: 'Aceptar'
                    })
                }
                $("#editarUsuario").modal('hide');
            }

        })
    });
    </script>
@endsection
