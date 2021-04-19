# Exploratory data analysis

First section consist of exploratory data analysis as well as feature engineering. It's a notebook consisting of feature analysis

# Model

Train.py consist of model training and analysis. The model of choice is XGBoost. XgBoost often does better than Logistic Regression. I would use CatBoost when I have a lot of categorical features or if I do not have the time for tuning hyperparameters.


# Serving

Server.py consist of model serving using Flask. Flas is a lightweight web framework for making models available as HTTP endpoint. Hosting:: HTTP Request --> nginx --> gunicorn --> flask. Worker: The actual instance of the application which hosts the inference code. Loads the trained model and returns
prediction results