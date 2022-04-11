#!/usr/bin/python3
"""
Python script to export data in the CSV forma.
"""


if __name__ == "__main__":
    import requests
    import csv
    from sys import argv
    url = "https://jsonplaceholder.typicode.com/"
    user_id = argv[1]
    call_employee = requests.get(url + "users/{}".format(user_id)).json()
    call_todos = requests.get(url + "todos/?userId={}".format(user_id)).json()
#    for task in call_todos:
#        if task["completed"] is True:
#            completed.append(task)
#    print("Employee {} is done with tasks({}/{}):"
#          .format(call_employee["name"], len(completed), len(call_todos)))
    with open("{}.csv".format(user_id), "w") as csvfile:
        writer = csv.writer(csvfile, quoting=csv.QUOTE_ALL)
        for call_todos in call_todos:
            writer.writerow([user_id, call_employee["username"],
                            call_todos["completed"], call_todos["title"]])
