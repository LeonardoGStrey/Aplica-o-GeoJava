<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Quadrado - Cálculos</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f4f9; padding: 40px; }
        .card { background: white; padding: 20px; border-radius: 15px; box-shadow: 0 4px 10px rgba(0,0,0,0.2); width: 350px; margin: auto; }
        input, button { margin-top: 10px; padding: 8px; border-radius: 8px; border: 1px solid #ccc; }
        button { background: #007bff; color: white; border: none; cursor: pointer; }
        button:hover { background: #0056b3; }
        .resultado { margin-top: 15px; font-weight: bold; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Quadrado</h2>
        <form method="post">
            <label>Digite o valor do lado:</label><br>
            <input type="number" name="lado" step="0.01" required>
            <br>
            <button type="submit">Calcular</button>
        </form>
        
        <div class="resultado">
            <%
                String ladoStr = request.getParameter("lado");
                if (ladoStr != null) {
                    try {
                        double lado = Double.parseDouble(ladoStr);
                        double perimetro = 4 * lado;
                        double area = lado * lado;
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
