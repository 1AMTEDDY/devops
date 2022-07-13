import json

def squaredNum(event, context):
    yourNum = event["queryStringParameters"]["number"]
    squaredNum = int(yourNum) ** 2

    body = {
	"message": "here is the squared value of the number you passed in",
	"yourNumber": squaredNum
    }

    return {"statusCode": 200, "body": json.dumps(body)}

    return response



def hello(event, context):
    body = {
        "message": "Yo Teddy-San!! Your function executed successfully!",
        "input": event,
    }

    return {"statusCode": 200, "body": json.dumps(body)}

    return response


def shoppingList(event, context):
    ourItem = event["queryStringParameters"]["item"]

    body = {
        "message": "here is the item you need to buy next time",
        "Item": ourItem
    }

    return {"statusCode": 200, "body": json.dumps(body)}

    return response










