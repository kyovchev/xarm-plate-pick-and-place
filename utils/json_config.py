import json
import numpy as np


def numpy_to_python(obj):
    if isinstance(obj, (np.float32, np.float64)):
        return float(obj)
    if isinstance(obj, (np.int32, np.int64)):
        return int(obj)
    if isinstance(obj, np.ndarray):
        return obj.tolist()
    return obj


def load(path="config.json"):
    try:
        with open(path, "r") as f:
            CONFIG = json.load(f)
        print("[CONFIG] Loaded:", CONFIG)
    except Exception as e:
        print("[CONFIG] Error:", e)
        CONFIG = {}
    return CONFIG


def save(config, path="config.json"):
    try:
        serializable = {k: numpy_to_python(v) for k, v in config.items()}
        with open(path, "w") as f:
            json.dump(serializable, f, indent=4)
        print(f"[CONFIG] Saved to {path}")
    except Exception as e:
        print("[CONFIG] Save Error:", e)
