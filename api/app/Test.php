<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Test extends Model
{
    protected $fillable = ['user_id', 'name', 'people_attempted', 'level', 'subject_id'];

    public function subject() {
        return $this->belongsTo('App\Subject');
    }

    public function questions() {
        return $this->hasMany('App\Question');
    }

    public function createdBy() {
        return $this->belongsTo('App\User', 'user_id');
    }
}
