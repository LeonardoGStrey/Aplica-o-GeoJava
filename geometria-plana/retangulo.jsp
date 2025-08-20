<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Retângulo - Cálculos</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f4f9; padding: 40px; }
        .card { background: white; padding: 20px; border-radius: 15px; box-shadow: 0 4px 10px rgba(0,0,0,0.2); width: 400px; margin: auto; }
        input, button { margin-top: 10px; padding: 8px; border-radius: 8px; border: 1px solid #ccc; }
        button { background: #28a745; color: white; border: none; cursor: pointer; }
        button:hover { background: #1e7e34; }
        .resultado { margin-top: 15px; font-weight: bold; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Retângulo</h2>
        <form method="post">
            <label>Digite a base:</label><br>
            <input type="number" name="base" step="0.01" required><br>
            
            <label>Digite a altura:</label><br>
            <input type="number" name="altura" step="0.01" required><br>
            
            <button type="submit">Calcular</button>
        </form>
        
        <div class="resultado">
            <%
                String baseStr = request.getParameter("base");
                String alturaStr = request.getParameter("altura");
                if (baseStr != null && alturaStr != null) {
                    try {
                        double base = Double.parseDouble(baseStr);
                        double altura = Double.parseDouble(alturaStr);
                        double perimetro = 2 * (base + altura);
                        double area = base * altura;
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
