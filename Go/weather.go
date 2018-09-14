package main

// cerner_2^5_2018
// get weather data for Overland park 66223

import (
    "fmt"
    "io/ioutil"
    "net/http"
)

func main() {
    request, err := http.NewRequest("GET", "https://api.openweathermap.org/data/2.5/weather", nil)
    if err != nil {
        fmt.Printf("The HTTP request failed with error %s\n", err)
    }
	get_query := request.URL.Query()
	get_query.Add("APPID", "84a4c8ef91bfd9af0e10a74f8625352e")
	get_query.Add("zip", "66223,us")
	request.URL.RawQuery = get_query.Encode()
        
	response, err := http.Get(request.URL.String())
    if err != nil {
        fmt.Printf("The HTTP request failed with error %s\n", err)
    } else {
		data, _ := ioutil.ReadAll(response.Body)
        fmt.Println(string(data))
	}
}
