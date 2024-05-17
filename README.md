This is a python script to generate random metrics and publish them at `localhost:8000/metrics` to load test agents like grafana alloy or Otel collector.

### How to run

- Installing Dependencies
  ```
  pip install -r requirements.txt
  ```
- Running the script
    ```
    python main.py --number_of_metrics 10000 --rate_of_metric_generation 2 --time 10
    ```

- If you want to run the docker image
    ```
   docker pull powershot18/random_metric_generator
   docker run -p 8000:8000 powershot18/random_metric_generator --number_of_metrics 100000 --rate_of_metric_generation 30000 --time 30
  ```