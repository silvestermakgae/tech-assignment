# click through rate prediction Assessment

The  project is a machine learning project written in python language and
## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install project requirements.

```bash
Feature Engineering and exploratory data analysis.ipyb # Notebook containing steps for finding patterns
pip install -r requirements.txt
python server.py # serving model on localhost
python train.py # trains the model with any given data

```

## Usage

```python

server.py

test_data.json

{
    "x" : ["Some data with appropriate schemas"]
}

curl -XPOST http://localhost:5000/api -H 'Content-Type: application/json' -d @test_data.json

{
    "x" : ["Some data with schemas", "Payload information"]
}

curl -XPOST http://localhost:5000/api -H 'Content-Type: application/json' -d @test_data.json
```