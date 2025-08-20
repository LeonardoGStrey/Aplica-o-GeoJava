<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Triângulo - Cálculos</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f4f9; padding: 40px; }
        .card { background: white; padding: 20px; border-radius: 15px; box-shadow: 0 4px 10px rgba(0,0,0,0.2); width: 400px; margin: auto; }
        input, button { margin-top: 10px; padding: 8px; border-radius: 8px; border: 1px solid #ccc; width: 95%; }
        button { background: #007bff; color: white; border: none; cursor: pointer; }
        button:hover { background: #0056b3; }
        .resultado { margin-top: 15px; font-weight: bold; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Triângulo</h2>
        <form method="post">
            <label>Digite o lado a (base):</label><br>
            <input type="number" name="a" step="0.01" required><br>

            <label>Digite o lado b:</label><br>
            <input type="number" name="b" step="0.01" required><br>

            <label>Digite o lado c:</label><br>
            <input type="number" name="c" step="0.01" required><br>

            <label>Digite a altura (h):</label><br>
            <input type="number" name="h" step="0.01" required><br>
            
            <button type="submit">Calcular</button>
        </form>
        
        <div class="resultado">
            <%
                String aStr = request.getParameter("a");
                String bStr = request.getParameter("b");
                String cStr = request.getParameter("c");
                String hStr = request.getParameter("h");

                if (aStr != null && bStr != null && cStr != null && hStr != null) {
                    try {
                        double a = Double.parseDouble(aStr);
                        double b = Double.parseDouble(bStr);
                        double c = Double.parseDouble(cStr);
                        double h = Double.parseDouble(hStr);

                        double perimetro = a + b + c;
                        double area = (a * h) / 2;

                        out.println("Perímetro: " + perimetro + "<br>");
                        out.println("Área: " + area);
                    } catch (Exception e) {
                        out.println("Digite valores válidos!");
                    }
                }
            %>
        </div>
    </div>
</body>
</html>
