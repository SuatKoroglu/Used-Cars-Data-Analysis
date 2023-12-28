import pandas as pd
import numpy as np
import tensorflow as tf
from sklearn.preprocessing import StandardScaler
import joblib

# Load the trained model
loaded_model = tf.keras.models.load_model('used_cars_price_prediction_model')

# Load the scaler fitted on the training data
scaler = joblib.load('used_cars_price_prediction_model/scaler.joblib')

# Load the new data
new_data = pd.read_csv('nntestdata.csv', delimiter=';')

# Assuming the 'price' column is empty and needs to be predicted
# Drop 'price' for feature input
X_new = new_data.drop('price', axis=1)

# Normalize/Scale the numeric features using the fitted scaler
X_new_scaled = scaler.transform(X_new)

# Make predictions
predictions = loaded_model.predict(X_new_scaled)

# Display the predicted prices
new_data['predicted_price'] = predictions
print(new_data[['predicted_price']])
