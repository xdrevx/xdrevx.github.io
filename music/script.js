document.addEventListener('DOMContentLoaded', function () {
    const audioPlayer = document.getElementById('audio-player');
    const playBtn = document.getElementById('play');
    let isPlaying = false;
    let currentTrack = 0;
    const tracks = ['audio1.mp3', 'audio2.mp3', 'audio3.mp3'];

    document.querySelectorAll('.music-list li').forEach((item, index) => {
        item.addEventListener('click', function () {
            currentTrack = index;
            setTrack();
        });
    });

    function setTrack() {
        audioPlayer.src = tracks[currentTrack];
        audioPlayer.play();
        isPlaying = true;
        playBtn.innerHTML = '<i class="fas fa-pause"></i>';
    }

    playBtn.addEventListener('click', function() {
        if (isPlaying) {
            audioPlayer.pause();
            isPlaying = false;
            playBtn.innerHTML = '<i class="fas fa-play"></i>';
        } else {
            audioPlayer.play();
            isPlaying = true;
            playBtn.innerHTML = '<i class="fas fa-pause"></i>';
        }
    });
});
