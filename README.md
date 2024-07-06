# Brain-Tumour-Classification-Identification-API

# Brain Tumor Classification API

Made for and used in [NeuroVision](https://braintumourdetect.vercel.app/)

This API, built using Flask, allows for the classification of brain tumors from images. It performs both binary classification (tumor/no tumor) and multi-class classification (Glioma, Meningioma, Pituitary) of brain tumor types using pretrained ResNet models.

## Table of Contents

- [Installation](##Installation)
- [Usage](##Usage)
- [Models](#Models)

## Installation

### Prerequisites

- Python 3.7 or later
- `pip` package manager

### Setup

1. Clone the repository:

    ```bash
    git clone https://github.com/yourusername/brain-tumor-classification-api.git
    cd brain-tumor-classification-api
    ```

2. Install the required dependencies:

    ```bash
    pip install -r requirements.txt
    ```


3. Run the Flask application:

    ```bash
    python app.py
    ```

## Usage

### Sending Requests

To use the API, send a `POST` request to the `/predict` endpoint with an image file. The API will return the classification results in JSON format.

### Example

Here is an example using `curl`:

```bash
curl -X POST -F "image=@path/to/your/image.jpg" http://127.0.0.1:8080/predict
```

### Sample Response 
```json
{
  "binary_prediction": "yes",
  "binary_probability": 0.85,
  "tumor_type": 2,
  "probabilities": [0.05, 0.10, 0.85]
}
```

## Models
### Binary Classification Model
- Architecture: ResNet-18
- Output: Single neuron with sigmoid activation for binary classification (tumor/no tumor).
- Pre-trained model: binary_classification_model.pth
### Multi-class Classification Model
- Architecture: ResNet-18
- Output: Three neurons with softmax activation for multi-class classification (0: Glioma, 1: Meningioma, 2: Pituitary).
- Pre-trained model: brain_tumor_classifier.pth

