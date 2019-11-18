void setup() {
  background(
    json.getJSONObject(0).getJSONObject("background_color").getInt("red"), 
    json.getJSONObject(0).getJSONObject("background_color").getInt("green"), 
    json.getJSONObject(0).getJSONObject("background_color").getInt("blue")
  );

  displayTypefaceSize = json.getJSONObject(0).getInt("display_typeface_size");
  readingTypefaceSize = json.getJSONObject(0).getInt("reading_typeface_size");

  displayTypeface = createFont(json.getJSONObject(0).getString("display_typeface"), displayTypefaceSize);
  readingTypeface = createFont(json.getJSONObject(0).getString("reading_typeface"), readingTypefaceSize);

  textFont(displayTypeface);
  fill(0);
  text("I am Display Type", 10, (displayTypefaceSize + 10));

  textFont(readingTypeface);
  fill(127);
  text("I am your reading text.", 10, (displayTypefaceSize + readingTypefaceSize) + 15);
}
