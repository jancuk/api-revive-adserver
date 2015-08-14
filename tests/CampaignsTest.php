<?php

class CampaignsTest extends TestCase
{
    public function testResponse()
    {
      $response = $this->call('GET', '/campaigns');
      $this->assertEquals(200, $response->status());

      $data = json_decode($response->getContent(), true);
      $this->assertNotEmpty($data['campaigns']);
      $this->assertNotEmpty($data['total']);
      $this->assertNotEmpty($data['page']);
    }

}
