#! /bin/bash

luna-send -n 1 -f luna://com.webos.service.storageaccess/device/handleExtraCommand '{
   "storageType":"cloud",
   "driveId":"<listStorageProviders를 통해 확인한 cloud Google Id>",
   "operation":{
      "type":"authenticate",
      "payload":{
         "secretToken":"<cloud_login 후에 제공받은 payload의 url에서 받은 token>"
      }
   }
}'
