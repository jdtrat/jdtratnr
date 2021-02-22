
/* from Yihui Xie's slide for scaling*/
remark.macros.scale = function (percentage) {
  var url = this;
  return '<img src="' + url + '" style="width: ' + percentage + '" />';
};

remark.macros.sup = function (text) {
  return '<sup>' + text + '</sup>';
};
