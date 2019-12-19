/* 

A code to  play non stop youtube videos on web browser 

As  Youtube.com has policy to ask "Video paused. Continue watching?" and Stop any continous video being played at an average of 90 minutes.

This code is setup interval to play non-stop videos in Youtube.com

1. Open console (Ctrl + shift + I) -> go to console tab (press esc)
2. paste the below code in console

SetInterval has 10 milliseconds time interval



Bidyashish Kumar
https://github.com/bidyashish/
*/

setInterval(function () {
    if (document.getElementsByClassName('line-text style-scope yt-confirm-dialog-renderer').length >= 1) {
        for (let i = 0; i < document.getElementsByClassName('line-text style-scope yt-confirm-dialog-renderer').length; i++) {
            if (document.getElementsByClassName('line-text style-scope yt-confirm-dialog-renderer')[i].innerText == "Video paused. Continue watching?") {
                document.getElementsByClassName('line-text style-scope yt-confirm-dialog-renderer')[i].parentNode.parentNode.parentNode.querySelector('#confirm-button').click()
            }
        }
    }
}, 10)();