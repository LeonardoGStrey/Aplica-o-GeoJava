<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Cilindro - Cálculos</title>
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
        <h2>Cilindro</h2>
        <form method="post">
            <label>Raio (r):</label><br>
            <input type="number" name="r" step="0.01" required><br>

            <label>Altura (h):</label><br>
            <input type="number" name="h" step="0.01" required><br>

            <button type="submit">Calcular</button>
        </form>
        
        <div class="resultado">
            <%
                String rStr = request.getParameter("r");
                String hStr = request.getParameter("h");

                if (rStr != null && hStr != null) {
                    try {
                        double r = Double.parseDouble(rStr);
                        double h = Double.parseDouble(hStr);

                        // Área de uma base
                        double areaBase = Math.PI * r * r;

                        // Área das bases (2 vezes a base)
                        double areaBases = 2 * areaBase;

                        // Área lateral
                        double areaLateral = 2 * Math.PI * r * h;

                        // Área total
                        double areaTotal = areaBases + areaLateral;

                        // Volume
                        double volume = areaBase * h;

                        out.println("Área de uma Base: " + areaBase + "<br>");
                        out.println("Área das Bases: " + areaBases + "<br>");
                        out.println("Área Lateral: " + areaLateral + "<br>");
                        out.println("Área Total: " + areaTotal + "<br>");
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
