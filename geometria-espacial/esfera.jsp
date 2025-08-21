<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Esfera - Cálculos</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f4f9; padding: 40px; }
        .card { background: white; padding: 20px; border-radius: 15px; box-shadow: 0 4px 10px rgba(0,0,0,0.2); width: 420px; margin: auto; }
        input, button { margin-top: 10px; padding: 8px; border-radius: 8px; border: 1px solid #ccc; width: 90%; }
        button { background: #007bff; color: white; border: none; cursor: pointer; }
        button:hover { background: #0056b3; }
        .resultado { margin-top: 15px; font-weight: bold; }
        img { max-width: 100%; margin-bottom: 15px; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Esfera</h2>
        <img src="esfera.png" alt="Fórmulas da Esfera">
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

                        // Área superficial
                        double area = 4 * Math.PI * r * r;

                        // Volume
                        double volume = (4.0 / 3.0) * Math.PI * Math.pow(r, 3);

                        out.println("Área Superficial: " + area + "<br>");
                        out.println("Volume: " + volume);
                    } catch (Exception e) {
                        out.println("Digite valores válidos!");
                    }
                }
            %>
        </div>
    </div>
</body>
</html>
