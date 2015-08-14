<?php namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;
use App\Campaign;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class CampaignsController extends BaseController
{
  public function index(Request $request)
  {
    $limit = $request->input('limit') ? $request->input('limit') : 10;
    $page  = $request->input('page') ? $request->input('page') : 0;

    $dataCampaigns = Campaign::take($limit)->offset($page)->get();
    $total = Campaign::count();

    $data = [
        'meta' => [
            'page' => $page,
            'current_total' => count($dataCampaigns),
            'total' => $total
        ],
        'campaigns' => $dataCampaigns
    ];

    return $data;
  }

}
