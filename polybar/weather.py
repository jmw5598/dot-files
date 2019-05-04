#!/usr/bin/env python

import json
import urllib
import urllib.parse
import urllib.request
import os


def main():
    city = "5141502"
    api_key = "79102e60519c2c1eaa8d3a14946ef8b1"

    try:
        data = urllib.parse.urlencode({'id': city, 'appid': api_key, 'units': 'imperial'})
        weather = json.loads(urllib.request.urlopen(
            'http://api.openweathermap.org/data/2.5/weather?' + data)
            .read())
        desc = weather['weather'][0]['description'].capitalize()
        temp = int(float(weather['main']['temp']))
        #return '{}, {}°F'.format(desc, temp)
        return '{}°F'.format(temp)
    except:
        return ''


if __name__ == "__main__":
	print(main())
