<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Semester extends Model
{
    protected $guarded = [];
    public function tests()
    {
        return $this->hasMany('\App\Test');
    }
    public function users() {
        return $this->hasMany('\App\User');
    }
}
