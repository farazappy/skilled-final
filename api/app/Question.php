<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $fillable = ['name', 'option1', 'option2', 'option3', 'option4', 'correct'];
    
    public function test() {
        return $this->belongsTo('App\Test');
    }
}
