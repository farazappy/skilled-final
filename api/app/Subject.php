<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    protected $guarded = [];

    public function tests() {
        return $this->hasMany('App\Test');
    }
}
