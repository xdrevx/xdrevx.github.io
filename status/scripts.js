<script>
    const serverStatusElement = document.getElementById('serverStatus');
    const uptimeElement = document.getElementById('uptime');
    const connectionsElement = document.getElementById('connections');
    const errorsElement = document.getElementById('errors');
    const refreshButton = document.getElementById('refreshButton');

    function getRandomStatus() {
        // Simulate random server status (50% chance of being online)
        return Math.random() < 0.5 ? 'Online' : 'Offline';
    }

    function formatUptime(days) {
        return days > 1 ? `${days} days` : `${days} day`;
    }

    function updateServerStatus() {
        const serverStatus = getRandomStatus();

        // Simulated server status data
        const serverStatusData = {
            status: serverStatus,
            uptimeDays: Math.floor(Math.random() * 30) + 1, // Random uptime between 1 and 30 days
            connections: serverStatus === 'Online' ? Math.floor(Math.random() * 1000) + 500 : 0, // Simulate connections based on status
            errors: serverStatus === 'Online' ? Math.floor(Math.random() * 5) : Math.floor(Math.random() * 10) + 5 // Simulate errors based on status
        };

        // Update server status section
        serverStatusElement.textContent = `Server ${serverStatus}`;
        serverStatusElement.classList.toggle('online', serverStatus === 'Online');

        // Update server uptime message
        uptimeElement.textContent = `Uptime: ${formatUptime(serverStatusData.uptimeDays)}`;

        // Update connections and errors
        connectionsElement.textContent = `Connections: ${serverStatusData.connections}`;
        errorsElement.textContent = `Errors: ${serverStatusData.errors}`;

        // Update performance chart
        const ctx = document.getElementById('performanceChart').getContext('2d');
        new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                datasets: [{
                    label: 'Performance',
                    data: serverStatusData.performanceData,
                    borderColor: serverStatus === 'Online' ? '#5aff5a' : '#ff3d3d',
                    backgroundColor: serverStatus === 'Online' ? 'rgba(90, 255, 90, 0.2)' : 'rgba(255, 61, 61, 0.2)',
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

    // Refresh button click event
    refreshButton.addEventListener('click', () => {
        updateServerStatus();
    });
</script>
