.class public Lcom/baidu/android/pushservice/a/b/b;
.super Lcom/baidu/android/pushservice/a/b/h;


# instance fields
.field private final d:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1, p3}, Lcom/baidu/android/pushservice/a/b/h;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/baidu/android/pushservice/a/b/b;->d:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/baidu/android/pushservice/a/b/b;->a:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .registers 8

    const/4 v0, 0x0

    const-string v1, "action_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_27

    move-result v0

    :goto_13
    iget-object v1, p0, Lcom/baidu/android/pushservice/a/b/b;->c:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v1, v0, p1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/a/b/h;->a(Landroid/content/Intent;)V

    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception v1

    const-string v3, "AdvancedPicNotification"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_32
    const-string v1, "02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/baidu/android/pushservice/a/b/b;->a:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/baidu/android/pushservice/a/b/b;->c:Landroid/content/Context;

    const-string v3, "notification_big_icon"

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_26
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 5

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/baidu/android/pushservice/a/b/b;->d:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/baidu/android/pushservice/a/b/b;->c:Landroid/content/Context;

    const-string v2, "notification_big_icon"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/baidu/android/pushservice/a/b/b;->d:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/baidu/android/pushservice/a/b/b;->c:Landroid/content/Context;

    const-string v2, "notification_big_icon"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/a/b/b;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_f
.end method
