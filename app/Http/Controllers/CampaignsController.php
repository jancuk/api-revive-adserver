<?php namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;
use App\Campaign;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class CampaignsController extends BaseController
{
  public function index(Request $request)
  {
    $limit = 10;
    $page  = 1;

    if (isset($request->limit))
      $limit = $request->limit;
    if (isset($request->page))
      $page = $request->page;

    $dataCampaigns = Campaign::take($limit)->skip($page)->get();
    $data['campaigns'] = $dataCampaigns;
    $data['page'] = $page;
    $data['total'] = count($dataCampaigns);
    return $data;
  }

}
