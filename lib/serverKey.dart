import 'package:googleapis_auth/auth_io.dart';

class get_server_key {
  Future<String> server_token() async {
    final scopes = [
      'https://www.googleapis.com/auth/userinfo.email',
      'https://www.googleapis.com/auth/firebase.database',
      'https://www.googleapis.com/auth/firebase.messaging',
    ];
    final client = await clientViaServiceAccount(
        ServiceAccountCredentials.fromJson(
             {
              "type": "service_account",
              "project_id": "fcm-project-23861",
              "private_key_id": "f45ed543e070c9f26e5199c3afbe15e822853633",
              "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCytAutkdpPmVBp\nY95bO8VDOTrvNnpJccDgIpKUJp7yicicoyIviH2UiUMnLH+MGYAkDfl8YPC/CGkO\njK21qxP0V/vwcgTudYJJk7QD5x/OssfGrUlBP2W76eq9fIuVflduQCKsFqrdBD5f\nmquM4oGyUG/R9w3f+oxBKpy9y0vs/fhBrXKXE39+FKaUCaXS+J+WmuwrRqOtEkxI\nEZAvm0PwLcLjaPSB2kO5I9zYVUPvrnQmG9uzXX/MafhdA3FZGvtnS+O/r0Js1mxE\nUYgEDVTECiSimmzWEkIE3JW/Ky0dNVhx2McWUhI7NwFdLwV2L/Tiky/l8TCEGvcD\nbbuLWS/rAgMBAAECggEABPQBmNuAkhE9TdaDTMMQ2ialcAjyBcQd5PiAWJPjdvSD\nt3e8FFYzqODPGDBfDqqMRzON9TkYoyrgApO6otztjim8JXN7mIJwTIrIBA2tb4S8\nDdEyxRi1QKqgo4Tmt4uLb9ZeP6fXL44VDoBSffKvRpp9JvQykcE3jvzX4FjYr2Zk\ntsfo/D+x+RGIA5FT5uJVTwlEyRtKihbaJYasd0MMN7Ik9wiTA9kvSN/0UOsJFxnK\nm8TU93TIxsHJIg0+ugPsgNXyyOeTnCcpP5wggD9A8NLPDlpMg9FgWFPHGJe2VGiJ\nA0RROligiRyLpXFfQSo+cKwtFgMNz/aVVsexlUCo5QKBgQD3Adr2xyeDSRr9kM+j\nJ437FKtI7Up/xZsHJ1YYpR+NSuBoaN4VOvVysXGQdbp//WJ4HLUYkfRvkerLUEiu\nWGCSLAroq3xdHxhIE4Wi/CNN+T3mjYwHf6C9YeoowKE2jT42odSonDsldc0R2yZm\nHEfnHE62c3j4awwrPnDPro5FdwKBgQC5NZZW3bUhzFV29+dt9U0pNj7dmtjjF9H+\n9jJXxS3IKD70s68np9Nkk2UuvMAcXG8d/hCe3u0nH7YVd4BgmMVUnnnCO/Xw9/LK\n8YlKGIIQXVSKBVzpp6J37JDXoFqfGRwRI+TDRZ0Jara0z+UmkZL8zdyAd5gGEK/o\nQbTs20dWLQKBgDSbeo0woWO+wDbdDrwLApxFLK3djA5mgbwmTpn1ISEwn1bdbt9K\nrVf+HtfLmysDRmOaiZ9wBoV0qHMg6DnprLe1FaW0UEptAvjm34F0/ffva5Wc9APs\n1MlA/2QqkqtRrbxo/yfiDl7OFh0Fdcotn8rDJqiJM2yFMBRNui0hWj/FAoGAMS5s\ntLZ9EfOLwmLEPuvDyKzR9tDWxT8fEYBZD/uZU6x0Q1Cvs20acnu9g7K1pRJao3FD\nAp0aBqiiFoM8QOpwhC7tEEoR3iJJg+Ct31Iwv525BEm2SYmtWAEm2UuIpPTrAhYw\n+jWzJLwEtnD6XcqMaLtV0XtwkDPAMoG4RKlaASUCgYEAmggYXqlynhBhrwi993K7\nyXmjta3C7/wpz+vgXm7FswvwxUiDsuMTM6z6Ycue3nCHQCB7Ye4yh1rXW7ngT+zl\nKShmXfZDRjj78V93mN+sU96VF+QVVT2y8ePH9FS9zTQsdhAAorvUNh0Cg9NNE6wW\nF3Cory/5j7/4ePvtYMojoGM=\n-----END PRIVATE KEY-----\n",
              "client_email": "firebase-adminsdk-fbsvc@fcm-project-23861.iam.gserviceaccount.com",
              "client_id": "106177516931874762072",
              "auth_uri": "https://accounts.google.com/o/oauth2/auth",
              "token_uri": "https://oauth2.googleapis.com/token",
              "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
              "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-fbsvc%40fcm-project-23861.iam.gserviceaccount.com",
              "universe_domain": "googleapis.com"
            }
        ),
        scopes);
    final accessserverkey = client.credentials.accessToken.data;
    return accessserverkey;
  }
}