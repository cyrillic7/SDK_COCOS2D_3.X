.class public Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;


# static fields
.field public static final CLASS_NUMBER:I


# instance fields
.field private simTelephonyManager:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKapalaiDualSimIMEI(ILandroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_13

    .line 66
    :try_start_7
    const-string v2, "getDeviceId"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 72
    :goto_f
    return-object v0

    .line 67
    :catch_10
    move-exception v0

    move-object v0, v1

    goto :goto_f

    :cond_13
    move-object v0, v1

    goto :goto_f
.end method

.method public getKapalaiDualSimIMSI(ILandroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_13

    .line 49
    :try_start_7
    const-string v2, "getSubscriberId"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 55
    :goto_f
    return-object v0

    .line 50
    :catch_10
    move-exception v0

    move-object v0, v1

    goto :goto_f

    :cond_13
    move-object v0, v1

    goto :goto_f
.end method

.method public getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 22
    iget-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    if-nez v2, :cond_21

    .line 25
    const/4 v2, 0x2

    :try_start_7
    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    .line 26
    iget-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "phone"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 27
    iget-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    const/4 v3, 0x1

    const-string v4, "phone2"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_35

    .line 33
    :cond_21
    :goto_21
    iget-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    array-length v2, v2

    if-le v2, p1, :cond_33

    .line 35
    iget-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    if-gtz p1, :cond_31

    :goto_2e
    aget-object v0, v2, v0

    .line 38
    :goto_30
    return-object v0

    :cond_31
    move v0, v1

    .line 35
    goto :goto_2e

    .line 38
    :cond_33
    const/4 v0, 0x0

    goto :goto_30

    .line 28
    :catch_35
    move-exception v2

    goto :goto_21
.end method
