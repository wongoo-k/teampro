Notify = function() {
	window.onload = function () {
        if (window.Notification) {
            Notification.requestPermission();
        }
    }
        if (Notification.permission !== 'granted') {
            alert('알림권한설정이 활성화되지 않았습니다!');
        }
        else {
            var notification = new Notification('Notification title', {
                icon: 'http://cdn.sstatic.net/stackexchange/img/logos/so/so-icon.png',
                body: '알림 테스트!! 클릭하면 구글로 이동합니다.',
            });

            notification.onclick = function () {
                window.open('http://google.com');
            };
        }
}