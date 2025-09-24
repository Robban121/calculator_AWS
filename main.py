from flask import Flask, request, jsonify
from flask_cors import CORS
import pymysql

app = Flask(__name__)
CORS(app)  # Enable CORS for frontend requests

# ----------------------
# Database connection
# ----------------------
def get_connection():
    return pymysql.connect(
        host="database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com",       # e.g., database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com
        user="admin",
        password="admin123",
        database="calculator_db",
        cursorclass=pymysql.cursors.DictCursor
    )

# ----------------------
# Routes
# ----------------------

@app.route('/saveSum', methods=['POST'])
def save_sum():
    data = request.get_json()
    sum_value = data.get("sum_value")
    conn = None
    cursor = None

    try:
        conn = get_connection()
        cursor = conn.cursor()
        cursor.execute(
            "INSERT INTO results (operation, value) VALUES (%s, %s)",
            ("sum", sum_value)
        )
        conn.commit()
        return jsonify({"message": "Sum saved successfully!"})
    except Exception as e:
        print("Error in /saveSum:", e)
        return jsonify({"error": str(e)}), 500
    finally:
        if cursor:
            cursor.close()
        if conn:
            conn.close()


@app.route('/saveDifference', methods=['POST'])
def save_difference():
    data = request.get_json()
    diff_value = data.get("diff_value")
    conn = None
    cursor = None

    try:
        conn = get_connection()
        cursor = conn.cursor()
        cursor.execute(
            "INSERT INTO results (operation, value) VALUES (%s, %s)",
            ("difference", diff_value)
        )
        conn.commit()
        return jsonify({"message": "Difference saved successfully!"})
    except Exception as e:
        print("Error in /saveDifference:", e)
        return jsonify({"error": str(e)}), 500
    finally:
        if cursor:
            cursor.close()
        if conn:
            conn.close()


# ----------------------
# Health check endpoint (for ALB target group)
# ----------------------
@app.route('/health', methods=['GET'])
def health():
    return jsonify({"status": "ok"}), 200


# ----------------------
# Run Flask app on port 5050
# ----------------------
if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5050)

