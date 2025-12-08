{
  "workarea": {
    "pose": {
      "x": 100,
      "y": -200,
      "z": -20,
      "yaw": 0
    },
    "plane_markers": {
      "15": {
        "tag_id": "15",
        "local": {
          "x": 1176.0,
          "y": 776.75
        },
        "global": {
          "x": 0,
          "y": 0
        }
      },
      "16": {
        "tag_id": "16",
        "local": {
          "x": 1153.5,
          "y": 499.75
        },
        "global": {
          "x": 154,
          "y": 0
        }
      },
      "11": {
        "tag_id": "11",
        "local": {
          "x": 896.25,
          "y": 520.25
        },
        "global": {
          "x": 154,
          "y": 154
        }
      },
      "10": {
        "tag_id": "10",
        "local": {
          "x": 917.25,
          "y": 787.75
        },
        "global": {
          "x": 0,
          "y": 154
        }
      }
    },
    "fence": { "xmin": 250, "xmax": 1200, "ymin": 50, "ymax": 1030 }
  },
  "place_pose": {
    "x": 330,
    "y": 90,
    "z": 68
  },
  "buttons": [
    {
      "name": "Plate 1",
      "x": 50,
      "y": 10,
      "width": 150,
      "height": 40,
      "color": [100, 200, 100]
    },
    {
      "name": "Plate 3",
      "x": 220,
      "y": 10,
      "width": 150,
      "height": 40,
      "color": [100, 100, 200]
    },
    {
      "name": "Plate 4",
      "x": 390,
      "y": 10,
      "width": 150,
      "height": 40,
      "color": [200, 100, 100]
    },
    {
      "name": "Plate 5",
      "x": 560,
      "y": 10,
      "width": 150,
      "height": 40,
      "color": [200, 200, 100]
    }
  ],
  "scale_factor": 0.75,
  "image_width": 2400,
  "image_height": 1080,
  "button_bar_height": 60,
  "window_name": "Pick and Place",
  "SAM_checkpoint": "sam_vit_b_01ec64.pth",
  "static_image": "./images/6aee10a5de3b4bdc98a08d0c16145c15.jpg",
  "camera_URL": "http://192.168.1.118:8080/video",
  "static_image_mode": false
}
