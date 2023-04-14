
exports.squaredNum = function(event, context) {
    const yourNum = parseInt(event.queryStringParameters.number);
    const squaredNum = Math.pow(yourNum, 2);

    const body = {
        message: "here is the squared value of the number you passed in",
        yourNumber: squaredNum
    };

    return {
        statusCode: 200,
        body: json.stringify(body)
    };
};

exports.hello = function(event, context) {
    const body = {
        message: "Yo Teddy-San!! Your function executed successfully!",
        input: event
    };

    return {
        statusCode: 200,
        body: json.stringify(body)
    };
};

exports.shoppingList = function(event, context) {
    const ourItem = event.queryStringParameters.item;

    const body = {
        message: "here is the item you need to buy next time",
        Item: ourItem
    };

    return {
        statusCode: 200,
        body: json.stringify(body)
    };
};
