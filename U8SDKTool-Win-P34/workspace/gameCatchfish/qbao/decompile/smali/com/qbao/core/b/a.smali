.class public final Lcom/qbao/core/b/a;
.super Ljava/lang/Object;
.source "HtcDualModeSupport.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static a(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 61
    :try_start_1
    const-string v0, "com.htc.telephony.HtcTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 62
    if-nez p0, :cond_19

    .line 64
    const-string v1, "PHONE_SLOT1"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 70
    :goto_f
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 65
    :cond_19
    if-ne p0, v1, :cond_22

    .line 67
    const-string v1, "PHONE_SLOT2"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_f

    .line 69
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cardIndex can only be 0 or 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_2a} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2a} :catch_38

    .line 72
    :catch_2a
    move-exception v0

    .line 73
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 74
    :catch_31
    move-exception v0

    .line 75
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :catch_38
    move-exception v0

    .line 77
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Lcom/qbao/core/b/a;->c()Ljava/lang/Object;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendTextMessageExt"

    const/4 v3, 0x7

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

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 121
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 122
    const/4 v2, 0x7

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

    aput-object p5, v2, v3

    const/4 v3, 0x6

    invoke-static {p6}, Lcom/qbao/core/b/a;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5b} :catch_63
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_5b} :catch_6a

    .line 132
    return-void

    .line 123
    :catch_5c
    move-exception v0

    .line 124
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 125
    :catch_63
    move-exception v0

    .line 126
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 127
    :catch_6a
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 129
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_76

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 130
    :cond_76
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
    .line 136
    :try_start_0
    invoke-static {}, Lcom/qbao/core/b/a;->c()Ljava/lang/Object;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendDataMessageExt"

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

    .line 138
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 139
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

    invoke-static {p6}, Lcom/qbao/core/b/a;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_5f} :catch_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5f} :catch_67
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_5f} :catch_6e

    .line 149
    return-void

    .line 140
    :catch_60
    move-exception v0

    .line 141
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 142
    :catch_67
    move-exception v0

    .line 143
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 144
    :catch_6e
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 146
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_7a

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 147
    :cond_7a
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 22
    :try_start_1
    const-string v0, "com.htc.telephony.HtcTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 23
    const-string v0, "dualPhoneEnable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 24
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 25
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 26
    if-eqz v0, :cond_25

    .line 35
    :goto_24
    return v0

    .line 27
    :cond_25
    const-string v0, "dualGSMPhoneEnable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 28
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 29
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_3f} :catch_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_53

    move-result v0

    goto :goto_24

    .line 30
    :catch_41
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 32
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_4d

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 33
    :cond_4d
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 34
    :catch_53
    move-exception v0

    move v0, v1

    .line 35
    goto :goto_24
.end method

.method private static b()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 41
    :try_start_0
    const-string v0, "com.htc.telephony.HtcTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 42
    const-string v1, "getDefault"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
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

    .line 45
    :catch_1c
    move-exception v0

    .line 46
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 47
    :catch_23
    move-exception v0

    .line 48
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 49
    :catch_2a
    move-exception v0

    .line 50
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 51
    :catch_31
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 53
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3d

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 54
    :cond_3d
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Lcom/qbao/core/b/a;->b()Ljava/lang/Object;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getSubscriberIdExt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/qbao/core/b/a;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2a} :catch_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2a} :catch_39

    return-object v0

    .line 85
    :catch_2b
    move-exception v0

    .line 86
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 87
    :catch_32
    move-exception v0

    .line 88
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 89
    :catch_39
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 91
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_45

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 92
    :cond_45
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static c()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    const-string v0, "com.htc.wrap.android.telephony.HtcWrapIfSmsManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 99
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/telephony/SmsManager;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 101
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_23} :catch_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_23} :catch_2c
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_23} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_23} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_23} :catch_41

    move-result-object v0

    return-object v0

    .line 102
    :catch_25
    move-exception v0

    .line 103
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 104
    :catch_2c
    move-exception v0

    .line 105
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 106
    :catch_33
    move-exception v0

    .line 107
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :catch_3a
    move-exception v0

    .line 109
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 110
    :catch_41
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 112
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_4d

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 113
    :cond_4d
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
