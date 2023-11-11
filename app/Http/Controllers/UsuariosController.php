<?php

namespace App\Http\Controllers;

use App\Models\usuarios;
use App\Models\informacion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UsuariosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $datos = DB::table("user")->join ("information","information.idUsuario","=","user.id")->
        select("user.id","user.name as name","user.email as email","information.direccion as direccion","information.telefono as telefono", "information.fecha_nacimiento as fecha_nacimiento",DB::raw("TIMESTAMPDIFF(YEAR, information.fecha_nacimiento, CURDATE()) as edad"))->get();
        return response()->json($datos);

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $usuario = new usuarios();
        $info = new informacion();

        $usuario->name = $request->name;
        $usuario->email = $request->email;
        $usuario->password = $request->password;
        $varSave = $usuario->save();
        $info->idUsuario = $usuario->id;
        $info->direccion = $request->direccion;
        $info->telefono = $request->telefono;
        $info->fecha_nacimiento = $request->fecha_nacimiento;
        $varInfoSave = $info->save();
        return response()->json(array('user' => $varSave, 'info' => $varInfoSave));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $datos = DB::table("user")->join ("information","information.idUsuario","=","user.id")->
        select("user.id","user.name as name","user.email as email","user.password as password","information.direccion as direccion","information.telefono as telefono", "information.fecha_nacimiento as fecha_nacimiento",DB::raw("TIMESTAMPDIFF(YEAR, information.fecha_nacimiento, CURDATE()) as edad"))->where("user.id","=",$id)->get();
        return response()->json($datos);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Request $request)
    {
        $usuario = usuarios::findOrFail($request->id);
        $infoUser = informacion::where("idUsuario","=",$request->id)->get();
        $infoUpdate = informacion::findOrFail($infoUser[0]->id);

        $usuario->name = $request->name;
        $usuario->email = $request->email;
        $usuario->password = $request->password;
        $varSave = $usuario->save();
        $infoUpdate->direccion = $request->direccion;
        $infoUpdate->telefono = $request->telefono;
        $infoUpdate->fecha_nacimiento = $request->fecha_nacimiento;
        $varInfoSave = $infoUpdate->save();
        return response()->json(array('user' => $varSave, 'info' => $varInfoSave));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
        $usuario = usuarios::findOrFail($request->id);
        $infoUser = informacion::where("idUsuario","=",$request->id)->get();
        $infoUpdate = informacion::findOrFail($infoUser[0]->id);

        $usuario->name = $request->name;
        $usuario->email = $request->email;
        $usuario->password = $request->password;
        $varSave = $usuario->save();
        $infoUpdate->direccion = $request->direccion;
        $infoUpdate->telefono = $request->telefono;
        $infoUpdate->fecha_nacimiento = $request->fecha_nacimiento;
        $varInfoSave = $infoUpdate->save();
        return response()->json(array('user' => $varSave, 'info' => $varInfoSave));
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        $usuario = usuarios::findOrFail($request->id);
        $infoUser = informacion::where("idUsuario","=",$request->id)->get();
        $infoDelete = informacion::findOrFail($infoUser[0]->id);
        $infoDelete->delete();
        $varDelete = $usuario->delete();

        return response()->json(array('user' => $varDelete));

    }
}
