<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Troncos - Cone e Pirâmide</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f4f9; padding: 40px; }
        .card { background: white; padding: 20px; border-radius: 15px; box-shadow: 0 4px 10px rgba(0,0,0,0.2); width: 420px; margin: auto; }
        input, button, select { margin-top: 10px; padding: 8px; border-radius: 8px; border: 1px solid #ccc; width: 90%; }
        button { background: #007bff; color: white; border: none; cursor: pointer; }
        button:hover { background: #0056b3; }
        .resultado { margin-top: 15px; font-weight: bold; }
        img { max-width: 100%; margin-bottom: 15px; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Troncos</h2>
        <form method="post">
            <label>Escolha a figura:</label><br>
            <select name="figura" required>
                <option value="cone">Tronco de Cone</option>
                <option value="piramide">Tronco de Pirâmide</option>
            </select><br>

            <!-- Tronco de Cone -->
            <label>Raio maior (R):</label><br>
            <input type="number" name="R" step="0.01"><br>

            <label>Raio menor (r):</label><br>
            <input type="number" name="r" step="0.01"><br>

            <label>Altura (h):</label><br>
            <input type="number" name="h" step="0.01"><br>

            <label>Geratriz (g):</label><br>
            <input type="number" name="g" step="0.01"><br>

            <!-- Tronco de Pirâmide -->
            <label>Área da base maior (S_B):</label><br>
            <input type="number" name="SB" step="0.01"><br>

            <label>Área da base menor (S_b):</label><br>
            <input type="number" name="Sb" step="0.01"><br>

            <label>Altura (h):</label><br>
            <input type="number" name="hp" step="0.01"><br>

            <button type="submit">Calcular</button>
        </form>
        
        <div class="resultado">
            <%
                String figura = request.getParameter("figura");

                if (figura != null) {
                    try {
                        if (figura.equals("cone")) {
                            String Rv = request.getParameter("R");
                            String rv = request.getParameter("r");
                            String hv = request.getParameter("h");
                            String gv = request.getParameter("g");

                            if (Rv != null && rv != null && hv != null && gv != null &&
                                !Rv.isEmpty() && !rv.isEmpty() && !hv.isEmpty() && !gv.isEmpty()) {
                                
                                double R = Double.parseDouble(Rv);
                                double r = Double.parseDouble(rv);
                                double h = Double.parseDouble(hv);
                                double g = Double.parseDouble(gv);

                                double areaBases = Math.PI * (R*R + r*r);
                                double areaLateral = Math.PI * (R + r) * g;
                                double areaTotal = areaBases + areaLateral;
                                double volume = (Math.PI * h * (R*R + r*r + R*r)) / 3;

                                out.println("<h3>Resultados Tronco de Cone:</h3>");
                                out.println("Área das Bases: " + areaBases + "<br>");
                                out.println("Área Lateral: " + areaLateral + "<br>");
                                out.println("Área Total: " + areaTotal + "<br>");
                                out.println("Volume: " + volume + "<br>");
                            }
                        } else if (figura.equals("piramide")) {
                            String SBv = request.getParameter("SB");
                            String Sbv = request.getParameter("Sb");
                            String hv = request.getParameter("hp");

                            if (SBv != null && Sbv != null && hv != null &&
                                !SBv.isEmpty() && !Sbv.isEmpty() && !hv.isEmpty()) {
                                
                                double SB = Double.parseDouble(SBv);
                                double Sb = Double.parseDouble(Sbv);
                                double h = Double.parseDouble(hv);

                                double areaBases = SB + Sb;
                                double volume = (h / 3.0) * (SB + Sb + Math.sqrt(SB * Sb));

                                out.println("<h3>Resultados Tronco de Pirâmide:</h3>");
                                out.println("Área das Bases: " + areaBases + "<br>");
                                out.println("Área Lateral: (depende das faces triangulares)<br>");
                                out.println("Área Total: Área lateral + " + areaBases + "<br>");
                                out.println("Volume: " + volume + "<br>");
                            }
                        }
                    } catch (Exception e) {
                        out.println("Digite valores válidos!");
                    }
                }
            %>
        </div>
    </div>
</body>
</html>
    