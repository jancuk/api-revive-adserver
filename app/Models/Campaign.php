<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Campaign extends Model
{
  protected $table = 'rv_campaigns';
  protected $fillable = [
        'campaignid', 
        'campaignname', 
        'clientid', 
        'views', 
        'clicks', 
        'conversions',
        'priority',
        'weight',
        'target_impression',
        'anonymous',
        'companion',
        'comments',
        'revenue_type',
        'revenue',
        'updated',
        'block',
        'capping',
    ];
}
