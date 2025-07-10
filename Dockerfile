# Add this to your Dockerfile
COPY requirements.txt .
RUN pip install -r requirements.txt

# Or install directly
#RUN pip install pandas scikit-learn joblib
