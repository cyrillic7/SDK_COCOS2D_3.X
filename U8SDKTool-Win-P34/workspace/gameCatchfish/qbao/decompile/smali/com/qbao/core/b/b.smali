.class public final Lcom/qbao/core/b/b;
.super Ljava/lang/Object;
.source "LollipopDualModeSupport.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 20
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 22
    :try_start_8
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "getSimCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 23
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 24
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_23} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_23} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_23} :catch_33

    move-result v0

    return v0

    .line 25
    :catch_25
    move-exception v0

    .line 26
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 27
    :catch_2c
    move-exception v0

    .line 28
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 29
    :catch_33
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 31
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3f

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 32
    :cond_3f
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSubscriberId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 74
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 75
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/qbao/core/b/b;->c(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_30} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_30} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_30} :catch_3f

    return-object v0

    .line 76
    :catch_31
    move-exception v0

    .line 77
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 78
    :catch_38
    move-exception v0

    .line 79
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :catch_3f
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 82
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_4b

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 83
    :cond_4b
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p5}, Lcom/qbao/core/b/b;->d(I)Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 105
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p6}, Lcom/qbao/core/b/b;->d(I)Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 109
    return-void
.end method

.method private static c(I)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 40
    if-nez p0, :cond_45

    .line 41
    :try_start_3
    const-string v0, "com.android.internal.telephony.PhoneConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SUB1"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 49
    :goto_f
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 51
    const-string v1, "android.telephony.SubscriptionManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getSubId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 52
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 53
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 54
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0

    .line 42
    :cond_45
    if-ne p0, v0, :cond_54

    .line 43
    const-string v0, "com.android.internal.telephony.PhoneConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SUB2"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_f

    .line 44
    :cond_54
    const/4 v0, 0x2

    if-ne p0, v0, :cond_64

    .line 45
    const-string v0, "com.android.internal.telephony.PhoneConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SUB3"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_f

    .line 47
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cardIndex can only be 0,1,2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_6c} :catch_6c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_6c} :catch_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_6c} :catch_7a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_6c} :catch_81
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_6c} :catch_88

    .line 55
    :catch_6c
    move-exception v0

    .line 56
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 57
    :catch_73
    move-exception v0

    .line 58
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 59
    :catch_7a
    move-exception v0

    .line 60
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 61
    :catch_81
    move-exception v0

    .line 62
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :catch_88
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 65
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_94

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 66
    :cond_94
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d(I)Landroid/telephony/SmsManager;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qbao/core/b/f;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    const-class v0, Landroid/telephony/SmsManager;

    const-string v1, "getSmsManagerForSubscriber"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 91
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/qbao/core/b/b;->c(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsManager;
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_29} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_29} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_29} :catch_38

    return-object v0

    .line 92
    :catch_2a
    move-exception v0

    .line 93
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 94
    :catch_31
    move-exception v0

    .line 95
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :catch_38
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 98
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_44

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 99
    :cond_44
    new-instance v1, Lcom/qbao/core/b/f;

    invoke-direct {v1, v0}, Lcom/qbao/core/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
