<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Triângulo Equilátero - Cálculos</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f4f9; padding: 40px; }
        .card { background: white; padding: 20px; border-radius: 15px; box-shadow: 0 4px 10px rgba(0,0,0,0.2); width: 400px; margin: auto; }
        input, button { margin-top: 10px; padding: 8px; border-radius: 8px; border: 1px solid #ccc; width: 95%; }
        button { background: #17a2b8; color: white; border: none; cursor: pointer; }
        button:hover { background: #117a8b; }
        .resultado { margin-top: 15px; font-weight: bold; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Triângulo Equilátero</h2>
        <form method="post">
            <label>Digite o lado (l):</label><br>
            <input type="number" name="lado" step="0.01" required><br>
            
            <button type="submit">Calcular</button>
        </form>
        
        <div class="resultado">
            <%
                String ladoStr = request.getParameter("lado");

                if (ladoStr != null) {
                    try {
                        double l = Double.parseDouble(ladoStr);

                        double perimetro = 3 * l;
                        double area = (Math.pow(l, 2) * Math.sqrt(3)) / 4;

                        out.println("Perímetro: " + perimetro + "<br>");
                        out.println("Área: " + area);
                    } catch (Exception e) {
                        out.println("Digite um valor válido!");
                    }
                }
            %>
        </div>
    </div>
</body>
</html>
