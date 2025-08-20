<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Círculo - Cálculos</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f4f9; padding: 40px; }
        .card { background: white; padding: 20px; border-radius: 15px; box-shadow: 0 4px 10px rgba(0,0,0,0.2); width: 420px; margin: auto; }
        input, button { margin-top: 10px; padding: 8px; border-radius: 8px; border: 1px solid #ccc; width: 90%; }
        button { background: #007bff; color: white; border: none; cursor: pointer; }
        button:hover { background: #0056b3; }
        .resultado { margin-top: 15px; font-weight: bold; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Círculo</h2>
        <form method="post">
            <label>Raio (r):</label><br>
            <input type="number" name="r" step="0.01" required><br>

            <button type="submit">Calcular</button>
        </form>
        
        <div class="resultado">
            <%
                String rStr = request.getParameter("r");

                if (rStr != null) {
                    try {
                        double r = Double.parseDouble(rStr);

                        double comprimento = 2 * Math.PI * r;
                        double area = Math.PI * r * r;

                        out.println("Comprimento da circunferência: " + comprimento + "<br>");
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

