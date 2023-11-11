<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class informacion extends Model
{
    protected $connection = "mysql";
    protected $table = "laravel.information";
    protected $primaryKey = "id";
    public $timestamps = false;

}
