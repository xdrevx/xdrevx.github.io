<script>
    const serverStatusElement = document.getElementById('serverStatus');
    const refreshButton = document.getElementById('refreshButton');

    function getRandomStatus() {
        // Simulate random server status (50% chance of being online)
        return Math.random() < 0.5 ? 'Online' : 'Offline';
    }

    function updateServerStatus() {
        const serverStatus = getRandomStatus();

        // Simulated server status data
        const serverStatusData = {
            status: serverStatus,
            uptime: '15 days',
            connections: serverStatus === 'Online' ? 1024 : 0, // Simulate connections based on status
            errors: serverStatus === 'Online' ? 3 : 10, // Simulate errors based on status
            performanceData: [30, 50, 20, 80, 60, 45, 75]
        };

        // Update server status section
        serverStatusElement.textContent = `Server ${serverStatus}`;
        serverStatusElement.classList.toggle('online', serverStatus === 'Online');

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
