<?php namespace App\Http\Controllers\API;

use Laravel\Lumen\Routing\Controller as BaseController;
use App\Models\Campaign;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class CampaignsController extends BaseController
{
  public function index(Request $request)
  {
    $limit  = $request->input('limit') ? $request->input('limit') : 10;
    $page   = $request->input('page') ? $request->input('page') : 1;

    $offset = ($page - 1) * $limit;

    $total  = Campaign::count();
    $dataCampaigns = Campaign::take($limit)->offset($offset)->get();

    $data = [
        'meta' => [
            'page' => (int)$page,
            'current_total' => count($dataCampaigns),
            'total' => $total
        ],
        'campaigns' => $dataCampaigns
    ];

    return $data;
  }

}
