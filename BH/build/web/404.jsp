<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kansai Dashboard</title>
    <style>
        body { 
            font-family: Arial, sans-serif; 
            font-size: 16px;
        }
        .dashboard { 
            display: flex; 
            flex-wrap: wrap; 
            gap: 20px; 
        }
        .card { 
            padding: 20px; 
            background: #f5f5f5; 
            border-radius: 8px; 
            width: 250px; 
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 { 
            font-size: 24px; 
            margin-bottom: 10px; 
        }
    </style>
</head>
<body>
    <h1>Kansai Dashboard</h1>
    <div class="dashboard">
        <div class="card">
            <h2>Ng??i d�ng</h2>
            <p>T?ng s?: <!-- Ch�n k?t qu? TotalUsers --></p>
            <p>Ng??i b�n: <!-- Ch�n k?t qu? Sellers --></p>
            <p>Qu?n tr? vi�n: <!-- Ch�n k?t qu? Admins --></p>
            <p>Ng??i d�ng th??ng: <!-- Ch�n k?t qu? RegularUsers --></p>
        </div>
        <div class="card">
            <h2>S?n ph?m theo danh m?c</h2>
            <!-- L?p qua c�c k?t qu? CategoryName v� ProductCount ?? hi?n th? danh m?c v� s? l??ng s?n ph?m -->
        </div>
        <div class="card">
            <h2>Doanh thu ??c t�nh</h2>
            <p>Doanh thu: <!-- Ch�n k?t qu? EstimatedRevenue --></p>
        </div>
        <div class="card">
            <h2>S?n ph?m b�n ch?y nh?t</h2>
            <!-- L?p qua ProductName v� TotalSold cho c�c s?n ph?m b�n ch?y nh?t -->
        </div>
    </div>
</body>
</html>