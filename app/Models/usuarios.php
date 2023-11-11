<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class usuarios extends Model
{
    protected $connection = "mysql";
    protected $table = "laravel.user";
    protected $primaryKey = "id";
    public $timestamps = false;
    public function datos(){
        return $this->hasOne(informacion::class, "idUsuario");
    }


}
