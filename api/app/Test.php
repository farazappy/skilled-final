<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Test extends Model
{
    //protected $fillable = ['user_id', 'name', 'people_attempted', 'level', 'subject_id'];
    protected $guarded = [];

    protected $appends = ['total_marks'];

    public function subject() {
        return $this->belongsTo('App\Subject');
    }

    public function questions() {
        return $this->hasMany('App\Question');
    }

    public function createdBy() {
        return $this->belongsTo('App\User', 'user_id');
    }
    public function semester() {
        return $this->belongsTo('\App\Semester');
    }
    public function getTotalMarksAttribute() {
        $marks = 0;
        foreach($this->questions as $question)
            $marks += $question->marks;
        
        return $marks;
    }
}
