var minutes = ceil(match_time) div 60;
var seconds = ceil(match_time) mod 60;
var seconds_string = "";

if (seconds <= 9) {
    seconds_string = "0" + string(seconds);    
} else {
    seconds_string = string(seconds);
}

var show_time = string(minutes) + ":" + seconds_string;

return show_time;
