// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require Chart.min
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require_tree .

window.draw_graph = function() {
    var barNum, bdColors, bgColors, ctx, i, j, labels, myChart, ref;
    ctx = document.getElementById("myChart").getContext('2d');
    barNum = 6;
    labels = new Array(barNum);
    bgColors = new Array(barNum);
    bdColors = new Array(barNum);
    for (i = j = 0, ref = barNum; 0 <= ref ? j < ref : j > ref; i = 0 <= ref ? ++j : --j) {
        labels[i] = 'data' + i;
        bgColors[i] = 'rgba(75, 192, 192, 0.2)';
        bdColors[i] = 'rgba(75, 192, 192, 1)';
    }
    return myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            datasets: [{
                label: '# of Votes',
                data: gon.bardata,
                backgroundColor: bgColors,
                borderColor: bdColors,
                borderWidth: 1
            }, {
                label: 'Line Dataset',
                data: gon.linedata,
                type: 'line'
            }],
            labels: labels
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
};