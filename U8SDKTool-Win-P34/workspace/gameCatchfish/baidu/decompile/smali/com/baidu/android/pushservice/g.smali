.class public Lcom/baidu/android/pushservice/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/Object;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "NotificationBuilderManager"

    sput-object v0, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    const-string v0, "notification_builder_storage"

    sput-object v0, Lcom/baidu/android/pushservice/g;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/android/pushservice/g;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lcom/baidu/android/pushservice/g;->d:I

    return-void
.end method

.method public static a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;
    .registers 9

    sget-object v1, Lcom/baidu/android/pushservice/g;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/g;->a(Landroid/content/Context;I)Lcom/baidu/android/pushservice/PushNotificationBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/baidu/android/pushservice/PushNotificationBuilder;->setNotificationTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/baidu/android/pushservice/PushNotificationBuilder;->setNotificationText(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/baidu/android/pushservice/PushNotificationBuilder;->construct(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_22

    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v0, Landroid/app/Notification;->flags:I

    :goto_1b
    if-eqz p5, :cond_2c

    const/4 v2, 0x0

    iput v2, v0, Landroid/app/Notification;->defaults:I

    :goto_20
    monitor-exit v1

    return-object v0

    :cond_22
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    goto :goto_1b

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    const/4 v2, -0x1

    :try_start_2d
    iput v2, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_44

    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/app/Notification;->defaults:I

    :goto_39
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_4b

    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->defaults:I

    goto :goto_20

    :cond_44
    iget v2, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Landroid/app/Notification;->defaults:I

    goto :goto_39

    :cond_4b
    iget v2, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Landroid/app/Notification;->defaults:I
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_29

    goto :goto_20
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;
    .registers 8

    sget-object v1, Lcom/baidu/android/pushservice/g;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/g;->a(Landroid/content/Context;I)Lcom/baidu/android/pushservice/PushNotificationBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/android/pushservice/PushNotificationBuilder;->setNotificationTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/baidu/android/pushservice/PushNotificationBuilder;->setNotificationText(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/baidu/android/pushservice/PushNotificationBuilder;->construct(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    if-eqz p4, :cond_18

    const/4 v2, -0x1

    iput v2, v0, Landroid/app/Notification;->defaults:I

    :goto_16
    monitor-exit v1

    return-object v0

    :cond_18
    const/4 v2, 0x0

    iput v2, v0, Landroid/app/Notification;->defaults:I

    goto :goto_16

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private static a(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushNotificationBuilder;
    .registers 3

    new-instance v0, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;-><init>()V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->setNotificationFlags(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->setNotificationDefaults(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/BasicPushNotificationBuilder;->setStatusbarIcon(I)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;I)Lcom/baidu/android/pushservice/PushNotificationBuilder;
    .registers 8

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBuilder id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    sget-object v0, Lcom/baidu/android/pushservice/g;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d6

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/frontia/a/e/b;->a([B)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_4c
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/PushNotificationBuilder;
    :try_end_57
    .catch Ljava/io/StreamCorruptedException; {:try_start_4c .. :try_end_57} :catch_5e
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_57} :catch_86
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4c .. :try_end_57} :catch_ae

    :try_start_57
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/StreamCorruptedException; {:try_start_57 .. :try_end_5d} :catch_df
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5d} :catch_dd
    .catch Ljava/lang/ClassNotFoundException; {:try_start_57 .. :try_end_5d} :catch_db

    :goto_5d
    return-object v0

    :catch_5e
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_62
    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    const-string v3, "getBuilder read object error"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :catch_86
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_8a
    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    const-string v3, "getBuilder read object error"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :catch_ae
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_b2
    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    const-string v3, "getBuilder read object error: class not found"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :cond_d6
    invoke-static {p0}, Lcom/baidu/android/pushservice/g;->b(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushNotificationBuilder;

    move-result-object v0

    goto :goto_5d

    :catch_db
    move-exception v1

    goto :goto_b2

    :catch_dd
    move-exception v1

    goto :goto_8a

    :catch_df
    move-exception v1

    goto :goto_62
.end method

.method public static a(Landroid/content/Context;ILcom/baidu/android/pushservice/PushNotificationBuilder;)V
    .registers 10

    sget-object v1, Lcom/baidu/android/pushservice/g;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "US-ASCII"

    invoke-static {v3, v4}, Lcom/baidu/frontia/a/e/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/baidu/android/pushservice/g;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_44
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_44} :catch_46
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_44} :catch_6e
    .catchall {:try_start_3 .. :try_end_44} :catchall_6b

    :goto_44
    :try_start_44
    monitor-exit v1

    return-void

    :catch_46
    move-exception v0

    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    const-string v3, "setNotificationBuilder write object error"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :catchall_6b
    move-exception v0

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_44 .. :try_end_6d} :catchall_6b

    throw v0

    :catch_6e
    move-exception v0

    :try_start_6f
    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    const-string v3, "setNotificationBuilder write object error"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

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
    :try_end_92
    .catchall {:try_start_6f .. :try_end_92} :catchall_6b

    goto :goto_44
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/PushNotificationBuilder;)V
    .registers 9

    sget-object v1, Lcom/baidu/android/pushservice/g;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "US-ASCII"

    invoke-static {v3, v4}, Lcom/baidu/frontia/a/e/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/baidu/android/pushservice/g;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/baidu/android/pushservice/g;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_46} :catch_48
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_46} :catch_70
    .catchall {:try_start_3 .. :try_end_46} :catchall_6d

    :goto_46
    :try_start_46
    monitor-exit v1

    return-void

    :catch_48
    move-exception v0

    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    const-string v3, "setDefaultNotificationBuilder write object error"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :catchall_6d
    move-exception v0

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_46 .. :try_end_6f} :catchall_6d

    throw v0

    :catch_70
    move-exception v0

    :try_start_71
    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    const-string v3, "setDefaultNotificationBuilder write object error"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

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
    :try_end_94
    .catchall {:try_start_71 .. :try_end_94} :catchall_6d

    goto :goto_46
.end method

.method private static b(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushNotificationBuilder;
    .registers 7

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/android/pushservice/g;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/baidu/android/pushservice/g;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ba

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/frontia/a/e/b;->a([B)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_30
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/PushNotificationBuilder;
    :try_end_3b
    .catch Ljava/io/StreamCorruptedException; {:try_start_30 .. :try_end_3b} :catch_42
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3b} :catch_6a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_3b} :catch_92

    :try_start_3b
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_41
    .catch Ljava/io/StreamCorruptedException; {:try_start_3b .. :try_end_41} :catch_c3
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_41} :catch_c1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_41} :catch_bf

    :goto_41
    return-object v0

    :catch_42
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_46
    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    const-string v3, "getDefaultBuilder read object error"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :catch_6a
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_6e
    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    const-string v3, "getDefaultBuilder read object error"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :catch_92
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_96
    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    const-string v3, "getDefaultBuilder read object error: class not found"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_ba
    invoke-static {p0}, Lcom/baidu/android/pushservice/g;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushNotificationBuilder;

    move-result-object v0

    goto :goto_41

    :catch_bf
    move-exception v1

    goto :goto_96

    :catch_c1
    move-exception v1

    goto :goto_6e

    :catch_c3
    move-exception v1

    goto :goto_46
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/android/pushservice/PushNotificationBuilder;)V
    .registers 3

    const/16 v0, 0x22b8

    invoke-static {p0, v0, p1}, Lcom/baidu/android/pushservice/g;->a(Landroid/content/Context;ILcom/baidu/android/pushservice/PushNotificationBuilder;)V

    return-void
.end method
