.class Lcom/baidu/android/pushservice/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/message/PublicMsg;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/app/PendingIntent;

.field final synthetic e:Landroid/app/PendingIntent;

.field final synthetic f:Z

.field final synthetic g:Lcom/baidu/android/pushservice/c;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/c;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/io/File;Landroid/content/Context;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 8

    iput-object p1, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    iput-object p2, p0, Lcom/baidu/android/pushservice/d;->a:Lcom/baidu/android/pushservice/message/PublicMsg;

    iput-object p3, p0, Lcom/baidu/android/pushservice/d;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/baidu/android/pushservice/d;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/baidu/android/pushservice/d;->d:Landroid/app/PendingIntent;

    iput-object p6, p0, Lcom/baidu/android/pushservice/d;->e:Landroid/app/PendingIntent;

    iput-boolean p7, p0, Lcom/baidu/android/pushservice/d;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/baidu/android/pushservice/util/f;->b()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_8d

    iget-object v1, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/c;->a(Lcom/baidu/android/pushservice/c;Ljava/util/HashMap;)Ljava/util/HashMap;

    :goto_b
    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c;->a(Lcom/baidu/android/pushservice/c;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/d;->a:Lcom/baidu/android/pushservice/message/PublicMsg;

    iget-object v1, v1, Lcom/baidu/android/pushservice/message/PublicMsg;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c;->a(Lcom/baidu/android/pushservice/c;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->a:Lcom/baidu/android/pushservice/message/PublicMsg;

    iget-object v2, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAppId:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c;->a(Lcom/baidu/android/pushservice/c;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/android/pushservice/d;->a:Lcom/baidu/android/pushservice/message/PublicMsg;

    iget-object v3, v3, Lcom/baidu/android/pushservice/message/PublicMsg;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_42
    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c;->a(Lcom/baidu/android/pushservice/c;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/util/HashMap;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->b:Ljava/io/File;

    if-eqz v0, :cond_ca

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/baidu/android/pushservice/d;->b:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :cond_5c
    :goto_5c
    if-eqz v1, :cond_8c

    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    iget-object v2, p0, Lcom/baidu/android/pushservice/d;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    iget-object v3, v3, Lcom/baidu/android/pushservice/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    iget-object v4, v4, Lcom/baidu/android/pushservice/c;->g:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/baidu/android/pushservice/c;->a(Lcom/baidu/android/pushservice/c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v2

    if-nez v2, :cond_12a

    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/android/pushservice/d;->a:Lcom/baidu/android/pushservice/message/PublicMsg;

    iget-object v3, v3, Lcom/baidu/android/pushservice/message/PublicMsg;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bdi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/c;->a(Lcom/baidu/android/pushservice/c;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_8c
    :goto_8c
    return-void

    :cond_8d
    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c;->a(Lcom/baidu/android/pushservice/c;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_96} :catch_98

    goto/16 :goto_b

    :catch_98
    move-exception v0

    const-string v1, "LappPushNotificationBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c

    :cond_b6
    :try_start_b6
    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c;->a(Lcom/baidu/android/pushservice/c;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/d;->a:Lcom/baidu/android/pushservice/message/PublicMsg;

    iget-object v1, v1, Lcom/baidu/android/pushservice/message/PublicMsg;->mAppId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_42

    :cond_ca
    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c;->b(Lcom/baidu/android/pushservice/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_d3} :catch_98

    move-result v0

    if-nez v0, :cond_5c

    :try_start_d6
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    invoke-static {v2}, Lcom/baidu/android/pushservice/c;->b(Lcom/baidu/android/pushservice/c;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_e8
    .catch Ljava/net/MalformedURLException; {:try_start_d6 .. :try_end_e8} :catch_ec
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_e8} :catch_10b

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_5c

    :catch_ec
    move-exception v0

    :try_start_ed
    const-string v2, "LappPushNotificationBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    :catch_10b
    move-exception v0

    const-string v2, "LappPushNotificationBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    :cond_12a
    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    iget v0, v0, Lcom/baidu/android/pushservice/c;->b:I

    if-eqz v0, :cond_136

    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    iget v0, v0, Lcom/baidu/android/pushservice/c;->b:I

    iput v0, v2, Landroid/app/Notification;->flags:I

    :cond_136
    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    iget-boolean v0, v0, Lcom/baidu/android/pushservice/c;->h:Z

    if-eqz v0, :cond_182

    const/4 v0, 0x0

    iput v0, v2, Landroid/app/Notification;->defaults:I

    :cond_13f
    :goto_13f
    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->d:Landroid/app/PendingIntent;

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->e:Landroid/app/PendingIntent;

    iput-object v0, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->c:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-boolean v3, p0, Lcom/baidu/android/pushservice/d;->f:Z

    if-eqz v3, :cond_1aa

    iget-object v3, p0, Lcom/baidu/android/pushservice/d;->a:Lcom/baidu/android/pushservice/message/PublicMsg;

    iget-object v3, v3, Lcom/baidu/android/pushservice/message/PublicMsg;->mAppId:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/android/pushservice/d;->a:Lcom/baidu/android/pushservice/message/PublicMsg;

    iget-object v4, v4, Lcom/baidu/android/pushservice/message/PublicMsg;->mAppId:Ljava/lang/String;

    invoke-static {v4}, Lcom/baidu/android/pushservice/util/f;->d(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :goto_164
    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/android/pushservice/d;->a:Lcom/baidu/android/pushservice/message/PublicMsg;

    iget-object v3, v3, Lcom/baidu/android/pushservice/message/PublicMsg;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bdi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/c;->a(Lcom/baidu/android/pushservice/c;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto/16 :goto_8c

    :cond_182
    const/4 v0, -0x1

    iput v0, v2, Landroid/app/Notification;->defaults:I

    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    iget v0, v0, Lcom/baidu/android/pushservice/c;->c:I

    if-eqz v0, :cond_191

    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    iget v0, v0, Lcom/baidu/android/pushservice/c;->c:I

    iput v0, v2, Landroid/app/Notification;->defaults:I

    :cond_191
    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    iget-object v0, v0, Lcom/baidu/android/pushservice/c;->d:Landroid/net/Uri;

    if-eqz v0, :cond_19d

    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    iget-object v0, v0, Lcom/baidu/android/pushservice/c;->d:Landroid/net/Uri;

    iput-object v0, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_19d
    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    iget-object v0, v0, Lcom/baidu/android/pushservice/c;->e:[J

    if-eqz v0, :cond_13f

    iget-object v0, p0, Lcom/baidu/android/pushservice/d;->g:Lcom/baidu/android/pushservice/c;

    iget-object v0, v0, Lcom/baidu/android/pushservice/c;->e:[J

    iput-object v0, v2, Landroid/app/Notification;->vibrate:[J

    goto :goto_13f

    :cond_1aa
    iget-object v3, p0, Lcom/baidu/android/pushservice/d;->a:Lcom/baidu/android/pushservice/message/PublicMsg;

    iget-object v3, v3, Lcom/baidu/android/pushservice/message/PublicMsg;->mMsgId:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/android/pushservice/d;->a:Lcom/baidu/android/pushservice/message/PublicMsg;

    iget-object v4, v4, Lcom/baidu/android/pushservice/message/PublicMsg;->mMsgId:Ljava/lang/String;

    invoke-static {v4}, Lcom/baidu/android/pushservice/util/f;->d(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_1b9
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_1b9} :catch_98

    goto :goto_164
.end method
