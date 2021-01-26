<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ModelUsers extends Model
{
  protected $table = "users";
  protected $primaryKey = 'id';
  public $incrementing = false;
  public $timestamps = false;
  protected $fillable = [
    "name",	
    "email",
    "password",
    "api_token",
    "jenis_kelamin",
    "nohp"
  ];
}
