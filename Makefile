.PHONY: install test run format format-fix lint docker-build docker-run docker-test clean

format:
	python -m black --check .

lint:
	python -m ruff check .

# Install dependencies
install:
	python -m pip install -r requirements.txt

# Run tests
test:
	python -m pytest -q

# Run the application
run:
	python src/main.py

# Build the Docker image
docker-build:
	docker build -t $(IMAGE_NAME) .

# Run the application inside Docker
docker-run:
	docker run -it --rm $(IMAGE_NAME)

# Run the test suite inside Docker
docker-test:
	docker run --rm $(IMAGE_NAME) python -m pytest -q

# Clean generated files
clean:
	rm -rf __pycache__
	rm -rf .pytest_cache