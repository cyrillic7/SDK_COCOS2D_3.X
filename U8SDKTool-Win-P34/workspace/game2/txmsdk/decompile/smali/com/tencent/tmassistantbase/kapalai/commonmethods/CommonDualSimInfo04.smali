.class public Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo04;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;


# static fields
.field public static final CLASS_NUMBER:I = 0x4


# instance fields
.field private simTelephonyManager:[Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo04;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public getKapalaiDualSimIMEI(ILandroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 73
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKapalaiDualSimIMSI(ILandroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo04;->getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 46
    if-gtz p1, :cond_e

    .line 48
    :try_start_9
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_2e

    move-result-object v2

    .line 67
    :goto_d
    return-object v2

    .line 55
    :cond_e
    if-eqz v0, :cond_32

    .line 56
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSubscriberId"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 57
    if-eqz v3, :cond_32

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_30

    :goto_2c
    move-object v2, v0

    .line 63
    goto :goto_d

    .line 49
    :catch_2e
    move-exception v0

    goto :goto_d

    .line 62
    :catch_30
    move-exception v0

    goto :goto_d

    :cond_32
    move-object v0, v2

    goto :goto_2c
.end method

.method public getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    iget-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo04;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_25

    .line 26
    const/4 v0, 0x2

    :try_start_7
    new-array v0, v0, [Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo04;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    .line 27
    iget-object v3, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo04;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    aput-object v0, v3, v4

    .line 28
    iget-object v3, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo04;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    const-string v0, "phone2"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    aput-object v0, v3, v4
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_25} :catch_35

    .line 33
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo04;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_33

    .line 35
    iget-object v3, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo04;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    if-gtz p1, :cond_31

    move v0, v1

    :goto_2e
    aget-object v0, v3, v0

    .line 37
    :goto_30
    return-object v0

    :cond_31
    move v0, v2

    .line 35
    goto :goto_2e

    .line 37
    :cond_33
    const/4 v0, 0x0

    goto :goto_30

    .line 29
    :catch_35
    move-exception v0

    goto :goto_25
.end method
