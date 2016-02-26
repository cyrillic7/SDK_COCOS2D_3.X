.class public Lcom/baidu/android/pushservice/a/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/a/b/c$1;,
        Lcom/baidu/android/pushservice/a/b/c$a;
    }
.end annotation


# direct methods
.method static synthetic a(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/android/pushservice/a/b/f;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/baidu/android/pushservice/a/b/c;->b(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/android/pushservice/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 16

    const/4 v4, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_11
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "AdvertiseNotificationManager"

    const-string v1, "showNotification the contentTitle is invalid, the notification will not pop Up"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_2d

    const/16 v0, 0x1f

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_3d
    const-string v2, " "

    :cond_3f
    :goto_3f
    invoke-static {p4}, Lcom/baidu/android/pushservice/a/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-string v4, "null"

    :goto_47
    invoke-static {p5}, Lcom/baidu/android/pushservice/a/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v5, "null"

    :goto_4f
    invoke-static {p0}, Lcom/baidu/android/pushservice/a/b/c$a;->a(I)Lcom/baidu/android/pushservice/a/b/c$a;

    move-result-object v0

    move-object v1, p1

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/baidu/android/pushservice/a/b/c;->a(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_1e

    :cond_5a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_3f

    const/16 v0, 0x3f

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    :cond_69
    move-object v5, p5

    goto :goto_4f

    :cond_6b
    move-object v4, p4

    goto :goto_47
.end method

.method public static varargs a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;[Landroid/content/Intent;)V
    .registers 18

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_10
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "AdvertiseNotificationManager"

    const-string v1, "showNotification the contentTitle is invalid, the notification will not pop Up"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_2d

    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_3d
    const-string v2, " "

    :cond_3f
    :goto_3f
    invoke-static {p6}, Lcom/baidu/android/pushservice/a/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-object v7, p8, v1

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v7}, Lcom/baidu/android/pushservice/a/b/c;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_1d

    :cond_52
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_3f

    const/4 v0, 0x0

    const/16 v1, 0x3f

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    :cond_62
    invoke-static {p4}, Lcom/baidu/android/pushservice/a/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v4, "null"

    :goto_6a
    invoke-static {p5}, Lcom/baidu/android/pushservice/a/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_80

    const-string v5, "null"

    :goto_72
    invoke-static {p0}, Lcom/baidu/android/pushservice/a/b/c$a;->a(I)Lcom/baidu/android/pushservice/a/b/c$a;

    move-result-object v0

    move-object v1, p1

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/baidu/android/pushservice/a/b/c;->a(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;[Landroid/content/Intent;)V

    goto :goto_1d

    :cond_80
    move-object v5, p5

    goto :goto_72

    :cond_82
    move-object v4, p4

    goto :goto_6a
.end method

.method private static a(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 13

    invoke-static {p0, p1, p3, p2}, Lcom/baidu/android/pushservice/a/b/c;->b(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/android/pushservice/a/b/f;

    move-result-object v0

    const-string v1, "msg_id"

    invoke-virtual {p7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p7}, Lcom/baidu/android/pushservice/a/b/f;->a(Landroid/content/Intent;)V

    invoke-interface {v0, p6}, Lcom/baidu/android/pushservice/a/b/f;->a(Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a/a/e;->a()Lcom/baidu/android/pushservice/a/a/e;

    move-result-object v2

    new-instance v3, Lcom/baidu/android/pushservice/a/b/e;

    invoke-direct {v3, p1, v0, v1}, Lcom/baidu/android/pushservice/a/b/e;-><init>(Landroid/content/Context;Lcom/baidu/android/pushservice/a/b/f;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x1

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v2, p1, v3, v0}, Lcom/baidu/android/pushservice/a/a/e;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/a/a/a$a;[Landroid/net/Uri;)V

    return-void
.end method

.method private static varargs a(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;[Landroid/content/Intent;)V
    .registers 16

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/android/pushservice/a/b/c$a;->d:Lcom/baidu/android/pushservice/a/b/c$a;

    if-ne v0, p0, :cond_20

    sget-object v0, Lcom/baidu/android/pushservice/a/b/c$a;->d:Lcom/baidu/android/pushservice/a/b/c$a;

    invoke-static {v0, p1, p3, p2}, Lcom/baidu/android/pushservice/a/b/c;->b(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/android/pushservice/a/b/f;

    move-result-object v1

    :cond_b
    :goto_b
    const/4 v0, 0x0

    aget-object v0, p8, v0

    const-string v2, "msg_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    array-length v2, p8

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_2b

    aget-object v3, p8, v0

    invoke-interface {v1, v3}, Lcom/baidu/android/pushservice/a/b/f;->a(Landroid/content/Intent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_20
    sget-object v0, Lcom/baidu/android/pushservice/a/b/c$a;->e:Lcom/baidu/android/pushservice/a/b/c$a;

    if-ne v0, p0, :cond_b

    sget-object v0, Lcom/baidu/android/pushservice/a/b/c$a;->e:Lcom/baidu/android/pushservice/a/b/c$a;

    invoke-static {v0, p1, p3, p2}, Lcom/baidu/android/pushservice/a/b/c;->b(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/android/pushservice/a/b/f;

    move-result-object v1

    goto :goto_b

    :cond_2b
    invoke-interface {v1, p7}, Lcom/baidu/android/pushservice/a/b/f;->a(Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a/a/e;->a()Lcom/baidu/android/pushservice/a/a/e;

    move-result-object v6

    new-instance v0, Lcom/baidu/android/pushservice/a/b/d;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/android/pushservice/a/b/d;-><init>(Lcom/baidu/android/pushservice/a/b/f;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v6, p1, v0, v1}, Lcom/baidu/android/pushservice/a/a/e;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/a/a/a$a;[Landroid/net/Uri;)V

    return-void
.end method

.method private static a(Lcom/baidu/android/pushservice/a/b/f;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/baidu/android/pushservice/a/b/f;->a(J)V

    invoke-interface {p0, p1}, Lcom/baidu/android/pushservice/a/b/f;->a(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lcom/baidu/android/pushservice/a/b/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "PE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "H60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/a/a/g;->a(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_11
.end method

.method private static b(Lcom/baidu/android/pushservice/a/b/c$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/android/pushservice/a/b/f;
    .registers 14

    const/4 v9, -0x1

    const v8, -0xf0f10

    const v7, -0xfdfdfe

    const/4 v2, 0x1

    const v6, -0x929293

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lcom/baidu/android/pushservice/a/b/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/baidu/android/pushservice/a/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-object v0

    :cond_19
    sget-object v0, Lcom/baidu/android/pushservice/a/b/c$a;->d:Lcom/baidu/android/pushservice/a/b/c$a;

    if-eq p0, v0, :cond_21

    sget-object v0, Lcom/baidu/android/pushservice/a/b/c$a;->e:Lcom/baidu/android/pushservice/a/b/c$a;

    if-ne p0, v0, :cond_29

    :cond_21
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->c()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object p0, Lcom/baidu/android/pushservice/a/b/c$a;->a:Lcom/baidu/android/pushservice/a/b/c$a;

    :cond_29
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->f()Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "advertise_normal_layout_xiaomi"

    invoke-static {p1, v5}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_3e
    sget-object v4, Lcom/baidu/android/pushservice/a/b/c$1;->a:[I

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/a/b/c$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_244

    new-instance v0, Lcom/baidu/android/pushservice/a/b/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/baidu/android/pushservice/a/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    :goto_4f
    if-eqz v1, :cond_56

    new-instance v0, Lcom/baidu/android/pushservice/a/b/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/baidu/android/pushservice/a/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    invoke-static {v0, p2, p3}, Lcom/baidu/android/pushservice/a/b/c;->a(Lcom/baidu/android/pushservice/a/b/f;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_5a
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->h()Z

    move-result v0

    if-eqz v0, :cond_70

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "advertise_normal_layout_xiaomi_1s"

    invoke-static {p1, v5}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_3e

    :cond_70
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_86

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "advertise_normal_layout_honor"

    invoke-static {p1, v5}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_3e

    :cond_86
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "advertise_normal_layout"

    invoke-static {p1, v5}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_3e

    :pswitch_96
    invoke-static {p1}, Lcom/baidu/android/pushservice/a/b/g;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9f

    move-object v0, v1

    move v1, v2

    goto :goto_4f

    :cond_9f
    new-instance v1, Lcom/baidu/android/pushservice/a/b/h;

    invoke-direct {v1, v0, p1}, Lcom/baidu/android/pushservice/a/b/h;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {v1, v7}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    invoke-interface {v1, v6}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    invoke-interface {v1, v8}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v1

    move v1, v3

    goto :goto_4f

    :cond_b6
    invoke-interface {v1, v9}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    const v0, -0x979798

    invoke-interface {v1, v0}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    const/high16 v0, -0x1000000

    invoke-interface {v1, v0}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v1

    move v1, v3

    goto :goto_4f

    :pswitch_c7
    invoke-static {p1}, Lcom/baidu/android/pushservice/a/b/g;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_d0

    move-object v0, v1

    move v1, v2

    goto :goto_4f

    :cond_d0
    new-instance v1, Lcom/baidu/android/pushservice/a/b/h;

    invoke-direct {v1, v0, p1}, Lcom/baidu/android/pushservice/a/b/h;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_e8

    invoke-interface {v1, v7}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    invoke-interface {v1, v6}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    invoke-interface {v1, v8}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v1

    move v1, v3

    goto/16 :goto_4f

    :cond_e8
    invoke-interface {v1, v9}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    invoke-interface {v1, v6}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    const v0, -0xd4d4d5

    invoke-interface {v1, v0}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v1

    move v1, v3

    goto/16 :goto_4f

    :pswitch_f8
    invoke-static {p1}, Lcom/baidu/android/pushservice/a/b/g;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_102

    move-object v0, v1

    move v1, v2

    goto/16 :goto_4f

    :cond_102
    new-instance v1, Lcom/baidu/android/pushservice/a/b/h;

    invoke-direct {v1, v0, p1}, Lcom/baidu/android/pushservice/a/b/h;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    invoke-interface {v1, v7}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    invoke-interface {v1, v6}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    invoke-interface {v1, v8}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v1

    move v1, v3

    goto/16 :goto_4f

    :pswitch_114
    invoke-static {p1}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_11e

    move-object v0, v1

    move v1, v2

    goto/16 :goto_4f

    :cond_11e
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->f()Z

    move-result v1

    if-eqz v1, :cond_14b

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "advertise_advance_picture_layout_xiaomi"

    invoke-static {p1, v4}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_133
    new-instance v2, Lcom/baidu/android/pushservice/a/b/b;

    invoke-direct {v2, v0, v1, p1}, Lcom/baidu/android/pushservice/a/b/b;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_171

    invoke-interface {v2, v7}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    invoke-interface {v2, v6}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    invoke-interface {v2, v8}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v2

    move v1, v3

    goto/16 :goto_4f

    :cond_14b
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->a()Z

    move-result v1

    if-eqz v1, :cond_161

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "advertise_advance_picture_layout_honor"

    invoke-static {p1, v4}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_133

    :cond_161
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "advertise_advance_picture_layout"

    invoke-static {p1, v4}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_133

    :cond_171
    invoke-interface {v2, v9}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    const v0, -0x979798

    invoke-interface {v2, v0}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    const/high16 v0, -0x1000000

    invoke-interface {v2, v0}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v2

    move v1, v3

    goto/16 :goto_4f

    :pswitch_183
    invoke-static {p1}, Lcom/baidu/android/pushservice/a/b/g;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_18d

    move-object v0, v1

    move v1, v2

    goto/16 :goto_4f

    :cond_18d
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->f()Z

    move-result v1

    if-eqz v1, :cond_1bf

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "advertise_advance_bigstyle_layout_xiaomi"

    invoke-static {p1, v4}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_1a2
    new-instance v2, Lcom/baidu/android/pushservice/a/b/a;

    invoke-direct {v2, v0, v1, p1}, Lcom/baidu/android/pushservice/a/b/a;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_23f

    invoke-interface {v2, v9}, Lcom/baidu/android/pushservice/a/b/f;->b(I)V

    const v0, -0x979798

    invoke-interface {v2, v0}, Lcom/baidu/android/pushservice/a/b/f;->a(I)V

    const/high16 v0, -0x1000000

    invoke-interface {v2, v0}, Lcom/baidu/android/pushservice/a/b/f;->c(I)V

    move-object v0, v2

    move v1, v3

    goto/16 :goto_4f

    :cond_1bf
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->h()Z

    move-result v1

    if-eqz v1, :cond_1d5

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "advertise_advance_bigstyle_layout_xiaomi_1s"

    invoke-static {p1, v4}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1a2

    :cond_1d5
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1eb

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "advertise_advance_bigstyle_layout_bbk"

    invoke-static {p1, v4}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1a2

    :cond_1eb
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->e()Z

    move-result v1

    if-eqz v1, :cond_201

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "advertise_advance_bigstyle_layout_9250"

    invoke-static {p1, v4}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1a2

    :cond_201
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->g()Z

    move-result v1

    if-eqz v1, :cond_217

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "advertise_advance_bigstyle_layout_2k"

    invoke-static {p1, v4}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1a2

    :cond_217
    invoke-static {}, Lcom/baidu/android/pushservice/a/b/c;->a()Z

    move-result v1

    if-eqz v1, :cond_22e

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "advertise_advance_bigstyle_layout_honor"

    invoke-static {p1, v4}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_1a2

    :cond_22e
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "advertise_advance_bigstyle_layout"

    invoke-static {p1, v4}, Lcom/baidu/android/pushservice/a/b/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_1a2

    :cond_23f
    move-object v0, v2

    move v1, v3

    goto/16 :goto_4f

    nop

    :pswitch_data_244
    .packed-switch 0x1
        :pswitch_96
        :pswitch_c7
        :pswitch_f8
        :pswitch_114
        :pswitch_183
    .end packed-switch
.end method

.method private static b()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static c()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static d()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "BBK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_14
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "X1St"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "vivo X3L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Y11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3c
    const/4 v0, 0x1

    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method private static e()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Baidu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "9250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static f()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MI 4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MI 3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static g()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus 6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static h()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HM 1S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
