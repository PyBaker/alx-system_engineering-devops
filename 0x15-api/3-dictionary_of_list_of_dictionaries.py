#!/usr/bin/python3
"""
Python script to export data in the JSON format.
"""


if __name__ == "__main__":
    import requests
    from sys import argv
    import json
    url = "https://jsonplaceholder.typicode.com/"
    users = requests.get(url + "users").json()
    jsonDict = {}

    for employee in users:
        user_id = employee["id"]
        jsonDict[user_id] = []
        tasks = requests.get(url + "todos/?userId={}".format(user_id)).json()
        for task in tasks:
            jsonDict[user_id].append({"username": employee["username"],
                                      "task": task["title"],
                                      "completed": task["completed"]})

    with open("todo_all_employees.json", "w") as jsonfile:
        jsonfile.write((json.dumps(jsonDict)))
