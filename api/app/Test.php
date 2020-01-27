<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Test extends Model
{
    protected $guarded = [];

    public function subject() {
        return $this->belongsTo('App\Subject');
    }
}
