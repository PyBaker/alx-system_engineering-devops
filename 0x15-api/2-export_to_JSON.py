#!/usr/bin/python3
"""
Python script to export data in the JSON format.
"""


if __name__ == "__main__":
    import requests
    import json
    from sys import argv
    url = "https://jsonplaceholder.typicode.com/"
    user_id = argv[1]
    call_employee = requests.get(url + "users/{}".format(user_id)).json()
    tasks = requests.get(url + "todos/?userId={}".format(user_id)).json()

    jsonDict = {}
    jsonDict[user_id] = []

    for task in tasks:
        jsonDict[user_id].append({"task": task["title"],
                                  "completed": task["completed"],
                                  "username": call_employee["username"]})

    with open("{}.json".format(user_id), "w") as jsonfile:
        jsonfile.write((json.dumps(jsonDict)))
