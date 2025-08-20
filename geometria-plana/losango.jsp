<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Losango - Cálculos</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f4f9; padding: 40px; }
        .card { background: white; padding: 20px; border-radius: 15px; box-shadow: 0 4px 10px rgba(0,0,0,0.2); width: 420px; margin: auto; }
        input, button { margin-top: 10px; padding: 8px; border-radius: 8px; border: 1px solid #ccc; width: 90%; }
        button { background: #9932cc; color: white; border: none; cursor: pointer; }
        button:hover { background: #6a1b9a; }
        .resultado { margin-top: 15px; font-weight: bold; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Losango</h2>
        <form method="post">
            <label>Lado (a):</label><br>
            <input type="number" name="a" step="0.01" required><br>

            <label>Diagonal maior (D):</label><br>
            <input type="number" name="D" step="0.01" required><br>

            <label>Diagonal menor (d):</label><br>
            <input type="number" name="d" step="0.01" required><br>

            <button type="submit">Calcular</button>
        </form>
        
        <div class="resultado">
            <%
                String aStr = request.getParameter("a");
                String Dstr = request.getParameter("D");
                String dStr = request.getParameter("d");

                if (aStr != null && Dstr != null && dStr != null) {
                    try {
                        double a = Double.parseDouble(aStr);
                        double D = Double.parseDouble(Dstr);
                        double d = Double.parseDouble(dStr);

                        double perimetro = 4 * a;
                        double area = (D * d) / 2;

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
