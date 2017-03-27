<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Hoadon extends Model {

	//
	protected $table ='hoadons';
	protected $fillabel = ['name','email','phone','addreass','status','total_qty','total_price','created_at'];
	public $timestamp = false;
	public function chitiethoadon(){
		return $this->hasMany('App\Chitiethoadon');
	}
	public function user(){
		return $this->belongsTo('App\User');
	}

}
