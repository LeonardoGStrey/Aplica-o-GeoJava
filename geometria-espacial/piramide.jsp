<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Pirâmide - Cálculos</title>
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
        <h2>Pirâmide (base quadrada)</h2>
        <form method="post">
            <label>Lado da base (a):</label><br>
            <input type="number" name="a" step="0.01" required><br>

            <label>Altura da pirâmide (h):</label><br>
            <input type="number" name="h" step="0.01" required><br>

            <label>Apótema da pirâmide (sl):</label><br>
            <input type="number" name="sl" step="0.01" required><br>

            <button type="submit">Calcular</button>
        </form>
        
        <div class="resultado">
            <%
                String aStr = request.getParameter("a");
                String hStr = request.getParameter("h");
                String slStr = request.getParameter("sl"); // apótema

                if (aStr != null && hStr != null && slStr != null) {
                    try {
                        double a = Double.parseDouble(aStr);
                        double h = Double.parseDouble(hStr);
                        double sl = Double.parseDouble(slStr);

                        // Área da base (quadrado)
                        double areaBase = a * a;

                        // Área lateral (4 triângulos)
                        double areaLateral = 2 * a * sl; // 4 * (a*sl/2)

                        // Área total
                        double areaTotal = areaBase + areaLateral;

                        // Volume
                        double volume = (areaBase * h) / 3;

                        out.println("Área da Base: " + areaBase + "<br>");
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
