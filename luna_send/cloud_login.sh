#! /bin/bash
luna-send -n 1 -f luna://com.webos.service.storageaccess/device/handleExtraCommand '{
   "storageType":"cloud",
   "operation":{
      "type":"login",
      "payload":{
         "clientId":"<자신의 Google Cloud OAuth 데스크톱 클라이언트 ID>",
         "clientSecret":"<해당 클라이언트 ID의 클라이언트 보안 비밀번호>"
      }
   }
}'
