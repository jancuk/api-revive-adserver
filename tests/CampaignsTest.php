<?php
use App\Models\Campaign;

class CampaignsTest extends TestCase
{
    public function testResponse()
    {
      $response = $this->call('GET', '/api/v1/campaigns');
      $this->assertEquals(200, $response->getStatusCode());
      // $data = json_decode($response->getContent(), true);
      //
      // $this->assertNotEmpty($data['campaigns']);
      // $this->assertNotEmpty($data['meta']);
      // $this->assertNotEmpty($data['meta']['total']);
      // $this->assertNotEmpty($data['meta']['page']);
      // $this->assertNotEmpty($data['meta']['current_total']);
    }

}
