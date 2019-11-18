public void settings() {
  json = loadJSONArray("settings.json");

  for (int i = 0; i < json.size(); i++) {
    size(json.getJSONObject(i).getJSONObject("size").getInt("width"),
         json.getJSONObject(i).getJSONObject("size").getInt("height"));
  }
}
