document.addEventListener('DOMContentLoaded', function() {
    const sections = document.querySelectorAll('main section');
    const navLinks = document.querySelectorAll('nav a');
    const vehicleForm = document.getElementById('vehicle-form');
    const vehicleList = document.getElementById('vehicle-list');

    const totalVehiclesElem = document.getElementById('total-vehicles');
    const inServiceElem = document.getElementById('in-service');
    const completedElem = document.getElementById('completed');

    let vehicles = [];

    navLinks.forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            const targetSection = document.querySelector(this.getAttribute('href'));
            sections.forEach(section => section.classList.remove('active'));
            targetSection.classList.add('active');
        });
    });

    vehicleForm.addEventListener('submit', function(event) {
        event.preventDefault();

        const owner = document.getElementById('owner').value;
        const model = document.getElementById('model').value;
        const status = document.getElementById('status').value;

        const newVehicle = {
            id: Date.now(),
            owner: owner,
            model: model,
            status: status
        };

        vehicles.push(newVehicle);
        addVehicleToTable(newVehicle);
        updateDashboard();
        updateChart();

        vehicleForm.reset();
    });

    function addVehicleToTable(vehicle) {
        const newRow = document.createElement('tr');
        newRow.innerHTML = `
            <td>${vehicle.id}</td>
            <td>${vehicle.owner}</td>
            <td>${vehicle.model}</td>
            <td>${vehicle.status}</td>
        `;
        vehicleList.appendChild(newRow);
    }

    function updateDashboard() {
        const totalVehicles = vehicles.length;
        const inService = vehicles.filter(v => v.status === 'In Service').length;
        const completed = vehicles.filter(v => v.status === 'Completed').length;

        totalVehiclesElem.textContent = totalVehicles;
        inServiceElem.textContent = inService;
        completedElem.textContent = completed;
    }

    function updateChart() {
        const statusCount = {
            Pending: vehicles.filter(v => v.status === 'Pending').length,
            'In Service': vehicles.filter(v => v.status === 'In Service').length,
            Completed: vehicles.filter(v => v.status === 'Completed').length
        };

        const data = {
            labels: Object.keys(statusCount),
            datasets: [{
                label: 'Vehicle Status',
                data: Object.values(statusCount),
                backgroundColor: ['#f39c12', '#3498db', '#2ecc71']
            }]
        };

        const config = {
            type: 'doughnut',
            data: data,
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top'
                    },
                    tooltip: {
                        enabled: true
                    }
                }
            }
        };

        const statusChart = document.getElementById('status-chart');
        new Chart(statusChart, config);
    }
});
