function fn() {

    var config = {
        url: 'https://reqres.in'
    }
    // don't waste time waiting for a connection or if servers don't respond within 5 seconds
    // don't waste time waiting for a connection or if servers don't respond within 5 seconds
    karate.configure ('retry',{ count: 3, interval: 5000 })
    karate.configure('connectTimeout', 15000);
    karate.configure('readTimeout', 15000);
    karate.configure('ssl', true);
    return config;
}