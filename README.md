# RESTAURANNT BOOKING APP API

Restaurant booking app API is a RESTful API that provides a way to create, update, delete and retrieve news users, bookings and restaurants.

## Set-Up

    -Git
    -Ruby 2.7.4
    -Rails 7.0.4
    -Sqlite3(to run the database)
    -Postman(to test the API)
    -Railway

## Setup Installation

    -Clone the repository
    -Run the following commands:
        -cd <path_to_project>
        -bundle install
        -rails db:migrate db:seed
    -Open Postman to test the API endpoints
        -http://localhost:3000/<the_endpoint>

## Endpoints

GET requests 

    GET/users/:id

If the `User` exists, return JSON data in the format below:

    ```
    [
    {
        "id": 1,
        "name": "Sophia Nganga",
        "user_name": "Kabda",
        "bookings": [
            {
                "id": 1,
                "user_id": 1,
                "status": "booked"
            }
        ]
    ```

If the `User` does not exist, return

    ```
    {   "error": "User not found" }
    ```

    GET/reviews/:id

If the `Review` exists, return JSON data in the format below:

    ```
    [
    {
        "id": 1,
        "user_id": 1,
        "body": "Awesome place to be",
        "restaurant_id": 1,
        "user": {
            "id": 1,
            "name": "Sophia Nganga",
            "user_name": "Kabda"
        }
    }
    ]
    ```

POST requests
POST/bookings

To create a new `Booking` associated with an existing `User` and ` it accepts an object with the following properties:

    ```
     {
        "id": 1,
        "user_id": 1,
        "status": "booked"
    }
    ```

DELETE requests
Delete/users

- This deletes a user with all his/her associations

## Known bugs

Not able to post a booking. Working on it.

## License

MIT License

Copyright (c) 2022 mbuimbogo

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Project Owner
Name: Mbui Mbogo email: (mbuimbogo99@gmail.com)
