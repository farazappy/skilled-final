<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'phone', 'institution', 'skills', 'trade_lic_no', 'ugc_no', 'qualification', 'interested_in', 'role_id', 'address', 'role', 'profession_id', 'level'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function role() {
        return $this->belongsTo('App\Role');
    }

    public function semester() {
        return $this->belongsTo('\App\Semester');
    }

    public function interests() {
        return $this->belongsToMany('App\Interest');
    }

    public function tests() {
        return $this->hasMany('App\Test');
    }

    public function profession() {
        return $this->belongsTo('App\Profession');
    }
}
