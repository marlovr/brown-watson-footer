var inliner = require("inline-css");
var fs = require("fs");

function readModuleFile(path, callback) {
  try {
    var filename = require.resolve(path);
    fs.readFile(filename, "utf8", callback);
  } catch (e) {
    callback(e);
  }
}

readModuleFile("./index.html", function(err, file) {
  var html = file;
  inliner(html, { url: " " }).then(function(html) {
    console.log("HTML has been inlined");

    fs.writeFile("./inline.html", html, function(err) {
      if (err) {
        return console.log(err);
      }

      console.log("The file was saved!");
    });
  });
});
