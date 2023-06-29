fetch('php/String_gastos.php')
    .then(response => response.json())
    .then(data => {
        // Agregar total al final de los datos
        let total = data.cantidades.reduce((a, b) => a + b, 0);
        data.meses.push('Total');
        data.cantidades.push(total);

        // Obtener el elemento canvas
        var canvas = document.getElementById('chart');

        // Crear la gráfica de barras
        var ctx = canvas.getContext('2d');
        var chart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: data.meses,
                datasets: [{
                    label: 'Gastos Mensuales',
                    data: data.cantidades,
                    backgroundColor: 'rgba(54, 162, 235, 0.5)', // Color de las barras
                    borderColor: 'rgba(54, 162, 235, 1)', // Color del borde de las barras
                    borderWidth: 1 // Ancho del borde de las barras
                }]
            },
            options: {
                responsive: true,
                scales: {
                    x: {
                        title: {
                            display: true,
                            text: 'Meses'
                        }
                    },
                    y: {
                        title: {
                            display: true,
                            text: 'Gasto'
                        },
                        ticks: {
                            beginAtZero: true
                        }
                    }
                }
            }
        });
    })
    .catch(error => console.error(error));
