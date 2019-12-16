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

// HTMLが読み込まれた後にJavascriptが適用されるための記述
window.addEventListener('DOMContentLoaded', function() {

    /*
    getElementByIdというメソッド（操作）を使って、HTML文書内でmyChartというID名を指定した要素を参照。
    getContextメソッドはキャンバスにアクセうするためのもの。引数2dは、平面図形を描く際に指定。
    */
    var ctx = document.getElementById("myChart").getContext('2d');
    // chart.jsの記述
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            // グラフのx軸
            labels: gon.labels,
            datasets: [{
                // グラフにホバーした際に表示
                label: 'score',
                data: gon.data,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            title: {
                display: true,
                text: '体重(1月〜6月)'
            },
            scales: {
                yAxes: [{
                    ticks: {
                        suggestedMax: 100,
                        suggestedMin: 0,
                        stepSize: 10,
                        callback: function(value, index, values) {
                            return value + 'kg'
                        }
                    }
                }]
            }
        }
    });

});