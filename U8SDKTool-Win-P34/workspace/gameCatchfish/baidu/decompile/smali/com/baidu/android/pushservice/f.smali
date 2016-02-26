.class Lcom/baidu/android/pushservice/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/app/PendingIntent;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/android/pushservice/e;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/e;Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iput-object p2, p0, Lcom/baidu/android/pushservice/f;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/android/pushservice/f;->b:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/baidu/android/pushservice/f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    invoke-static {v1}, Lcom/baidu/android/pushservice/e;->a(Lcom/baidu/android/pushservice/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_14} :catch_6c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_b2

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/baidu/android/pushservice/f;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iget-object v2, v2, Lcom/baidu/android/pushservice/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iget-object v2, v2, Lcom/baidu/android/pushservice/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iget v2, v2, Lcom/baidu/android/pushservice/e;->a:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iget-object v3, p0, Lcom/baidu/android/pushservice/f;->a:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Lcom/baidu/android/pushservice/e;->a(Lcom/baidu/android/pushservice/e;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iget v0, v0, Lcom/baidu/android/pushservice/e;->b:I

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iget v0, v0, Lcom/baidu/android/pushservice/e;->b:I

    iput v0, v1, Landroid/app/Notification;->flags:I

    :cond_50
    iget-object v0, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iget-boolean v0, v0, Lcom/baidu/android/pushservice/e;->h:Z

    if-eqz v0, :cond_8a

    iput v4, v1, Landroid/app/Notification;->defaults:I

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/baidu/android/pushservice/f;->b:Landroid/app/PendingIntent;

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/baidu/android/pushservice/f;->a:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/baidu/android/pushservice/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :goto_6b
    return-void

    :catch_6c
    move-exception v0

    const-string v1, "NewPushNotificationBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_8a
    const/4 v0, -0x1

    iput v0, v1, Landroid/app/Notification;->defaults:I

    iget-object v0, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iget v0, v0, Lcom/baidu/android/pushservice/e;->c:I

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iget v0, v0, Lcom/baidu/android/pushservice/e;->c:I

    iput v0, v1, Landroid/app/Notification;->defaults:I

    :cond_99
    iget-object v0, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e;->d:Landroid/net/Uri;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e;->d:Landroid/net/Uri;

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_a5
    iget-object v0, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e;->e:[J

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/baidu/android/pushservice/f;->d:Lcom/baidu/android/pushservice/e;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e;->e:[J

    iput-object v0, v1, Landroid/app/Notification;->vibrate:[J

    goto :goto_58

    :catch_b2
    move-exception v0

    goto :goto_6b
.end method
