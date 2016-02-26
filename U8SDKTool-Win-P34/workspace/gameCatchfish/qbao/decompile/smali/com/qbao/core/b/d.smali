.class public final Lcom/qbao/core/b/d;
.super Ljava/lang/Object;
.source "MX4DualModeSupport.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Lcom/qbao/core/b/d;->d()Ljava/lang/Object;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendTextMessage"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 74
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    const/4 v3, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4f} :catch_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4f} :catch_57
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4f} :catch_5e

    .line 84
    return-void

    .line 75
    :catch_50
    move-exception v0

    .line 76
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 77
    :catch_57
    move-exception v0

    .line 78
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 79
    :catch_5e
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 81
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6a

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 82
    :cond_6a
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    invoke-static {}, Lcom/qbao/core/b/d;->d()Ljava/lang/Object;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendDataMessage"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, [B

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 91
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    const/4 v3, 0x5

    aput-object p5, v2, v3

    const/4 v3, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5b} :catch_63
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_5b} :catch_6a

    .line 101
    return-void

    .line 92
    :catch_5c
    move-exception v0

    .line 93
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 94
    :catch_63
    move-exception v0

    .line 95
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :catch_6a
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 98
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_76

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 99
    :cond_76
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 19
    :try_start_0
    const-string v0, "android.os.BuildExt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    const-string v1, "IS_M1_NOTE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 21
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result v0

    .line 24
    :goto_1b
    return v0

    .line 23
    :catch_1c
    move-exception v0

    .line 24
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static b(I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    const-string v0, "com.mediatek.telephony.TelephonyManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 31
    const-string v1, "getDefault"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 32
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 33
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    const-string v2, "getSubscriberId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 35
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 36
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3d} :catch_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3d} :catch_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_3d} :catch_53

    return-object v0

    .line 37
    :catch_3e
    move-exception v0

    .line 38
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 39
    :catch_45
    move-exception v0

    .line 40
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 41
    :catch_4c
    move-exception v0

    .line 42
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 43
    :catch_53
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 45
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5f

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 46
    :cond_5f
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 52
    :try_start_0
    const-string v0, "com.mediatek.telephony.SmsManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 53
    const-string v1, "getDefault"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 55
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1a} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1a} :catch_31

    move-result-object v0

    return-object v0

    .line 56
    :catch_1c
    move-exception v0

    .line 57
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :catch_23
    move-exception v0

    .line 59
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 60
    :catch_2a
    move-exception v0

    .line 61
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 62
    :catch_31
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 64
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3d

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 65
    :cond_3d
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
