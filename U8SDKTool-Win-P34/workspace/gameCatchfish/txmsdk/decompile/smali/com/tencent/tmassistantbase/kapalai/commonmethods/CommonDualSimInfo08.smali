.class public Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo08;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;


# static fields
.field public static final CLASS_NUMBER:I = 0x8


# instance fields
.field private simTelephonyManager:[Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo08;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public getKapalaiDualSimIMEI(ILandroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 58
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo08;->getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 59
    if-eqz v0, :cond_11

    .line 60
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v0

    .line 65
    :goto_d
    return-object v0

    .line 62
    :catch_e
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :cond_11
    move-object v0, v1

    goto :goto_d
.end method

.method public getKapalaiDualSimIMSI(ILandroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo08;->getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 43
    if-eqz v0, :cond_11

    .line 44
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v0

    .line 50
    :goto_d
    return-object v0

    .line 47
    :catch_e
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :cond_11
    move-object v0, v1

    goto :goto_d
.end method

.method public getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 20
    iget-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo08;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_29

    .line 22
    const/4 v0, 0x2

    :try_start_7
    new-array v0, v0, [Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo08;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    .line 23
    iget-object v3, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo08;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    const-string v0, "android.telephony.TelephonyManager"

    const-string v5, "getDefault"

    invoke-static {v0, v5}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    aput-object v0, v3, v4

    .line 25
    iget-object v3, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo08;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    const-string v0, "android.telephony.TelephonyManager"

    const-string v5, "getSecondary"

    invoke-static {v0, v5}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    aput-object v0, v3, v4
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_3e

    .line 31
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo08;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo08;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    array-length v0, v0

    if-le v0, p1, :cond_3c

    .line 32
    iget-object v3, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo08;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    if-gtz p1, :cond_3a

    move v0, v1

    :goto_37
    aget-object v0, v3, v0

    .line 34
    :goto_39
    return-object v0

    :cond_3a
    move v0, v2

    .line 32
    goto :goto_37

    .line 34
    :cond_3c
    const/4 v0, 0x0

    goto :goto_39

    .line 27
    :catch_3e
    move-exception v0

    goto :goto_29
.end method
