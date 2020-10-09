window.makePin = function (map, spot_name) {
  geocoder.geocode({ 'address': spot_name }, function (results, status) {
    //該当する検索結果がヒットした時に、地図の中心を検索結果の緯度経度に更新する
    if (status == 'OK') {
      new google.maps.Marker({
        map: map,
        position: results[0].geometry.location
      });
    } else {
      //検索結果が何もなかった場合に表示
      alert('該当する結果がありませんでした：' + status);
    }
  });
}