<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Trapézio - Cálculos</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f4f9; padding: 40px; }
        .card { background: white; padding: 20px; border-radius: 15px; box-shadow: 0 4px 10px rgba(0,0,0,0.2); width: 420px; margin: auto; }
        input, button { margin-top: 10px; padding: 8px; border-radius: 8px; border: 1px solid #ccc; width: 90%; }
        button { background: #ff6600; color: white; border: none; cursor: pointer; }
        button:hover { background: #cc5200; }
        .resultado { margin-top: 15px; font-weight: bold; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Trapézio</h2>
        <form method="post">
            <label>Base maior (B):</label><br>
            <input type="number" name="B" step="0.01" required><br>

            <label>Base menor (b):</label><br>
            <input type="number" name="b" step="0.01" required><br>

            <label>Lado esquerdo (c):</label><br>
            <input type="number" name="c" step="0.01" required><br>

            <label>Lado direito (d):</label><br>
            <input type="number" name="d" step="0.01" required><br>

            <label>Altura (h):</label><br>
            <input type="number" name="h" step="0.01" required><br>

            <button type="submit">Calcular</button>
        </form>
        
        <div class="resultado">
            <%
                String Bstr = request.getParameter("B");
                String bstr = request.getParameter("b");
                String cstr = request.getParameter("c");
                String dstr = request.getParameter("d");
                String hstr = request.getParameter("h");

                if (Bstr != null && bstr != null && cstr != null && dstr != null && hstr != null) {
                    try {
                        double B = Double.parseDouble(Bstr);
                        double b = Double.parseDouble(bstr);
                        double c = Double.parseDouble(cstr);
                        double d = Double.parseDouble(dstr);
                        double h = Double.parseDouble(hstr);

                        double perimetro = B + b + c + d;
                        double area = ((B + b) * h) / 2;

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
