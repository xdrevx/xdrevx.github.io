document.addEventListener('DOMContentLoaded', () => {
    const serverStatusElement = document.getElementById('serverStatus');
    const refreshButton = document.getElementById('refreshButton');

    function updateServerStatus() {
        // Simulated server status data
        const serverStatusData = {
            status: Math.random() < 0.8 ? 'Online' : 'Offline',
            uptimeDays: Math.floor(Math.random() * 30) + 1,
            connections: Math.floor(Math.random() * 1000),
            errors: Math.floor(Math.random() * 10),
            performanceData: [30, 50, 20, 80, 60, 45, 75]
        };

        // Update server status section
        serverStatusElement.textContent = `Server ${serverStatusData.status}`;
        serverStatusElement.classList.toggle('online', serverStatusData.status === 'Online');

        // Update performance chart
        const ctx = document.getElementById('performanceChart').getContext('2d');
        new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                datasets: [{
                    label: 'Performance',
                    data: serverStatusData.performanceData,
                    borderColor: serverStatusData.status === 'Online' ? '#5aff5a' : '#ff3d3d',
                    backgroundColor: serverStatusData.status === 'Online' ? 'rgba(90, 255, 90, 0.2)' : 'rgba(255, 61, 61, 0.2)',
                    tension: 0.4
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    }

    // Initial update on page load
    updateServerStatus();

    // Redirect button click event
    refreshButton.addEventListener('click', () => {
        window.location.href = 'https://drev.uk.to/status'; // Replace with your desired URL
    });

    // Chart hover effect (optional)
    const canvas = document.getElementById('performanceChart');
    canvas.addEventListener('mousemove', (event) => {
        // Implement hover effect logic here (e.g., tooltip changes, animation)
    });
});
