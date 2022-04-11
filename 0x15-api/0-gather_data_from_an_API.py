#!/usr/bin/python3
"""
Write a Python script that,
using this REST API< https://jsonplaceholder.typicode.com/ >,
for a given employee ID, returns information about his/her TODO list progress.
"""


if __name__ == "__main__":
    import requests
    from sys import argv
    url = "https://jsonplaceholder.typicode.com/"
    user_id = argv[1]
    call_employee = requests.get(url + "users/{}".format(user_id)).json()
    call_todos = requests.get(url + "users/{}/todos".format(user_id)).json()
    completed = []
    for task in call_todos:
        if task["completed"] is True:
            completed.append(task)
    print("Employee {} is done with tasks({}/{}):"
          .format(call_employee["name"], len(completed), len(call_todos)))
    for task in completed:
        print("\t", task["title"])
