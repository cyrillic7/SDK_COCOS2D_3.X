.class public Lcom/baidu/frontia/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/net/ConnectivityManager;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/baidu/frontia/a/a/a;->c(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    goto :goto_7
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "connectionless"

    invoke-static {p0}, Lcom/baidu/frontia/a/a/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    return-object v0

    :cond_9
    invoke-static {p0}, Lcom/baidu/frontia/a/a/a;->c(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v1, -0x1

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    :cond_18
    packed-switch v1, :pswitch_data_32

    goto :goto_8

    :pswitch_1c
    const-string v0, "mobile"

    goto :goto_8

    :pswitch_1f
    const-string v0, "mobile_dun"

    goto :goto_8

    :pswitch_22
    const-string v0, "mobile_hipri"

    goto :goto_8

    :pswitch_25
    const-string v0, "mobile_mms"

    goto :goto_8

    :pswitch_28
    const-string v0, "mobile_supl"

    goto :goto_8

    :pswitch_2b
    const-string v0, "wifi"

    goto :goto_8

    :pswitch_2e
    const-string v0, "wimax"

    goto :goto_8

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2b
        :pswitch_25
        :pswitch_28
        :pswitch_1f
        :pswitch_22
        :pswitch_2e
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2

    if-nez p0, :cond_5

    sget-object v0, Lcom/baidu/frontia/a/a/a;->a:Landroid/net/ConnectivityManager;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/baidu/frontia/a/a/a;->a:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_13

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/baidu/frontia/a/a/a;->a:Landroid/net/ConnectivityManager;

    :cond_13
    sget-object v0, Lcom/baidu/frontia/a/a/a;->a:Landroid/net/ConnectivityManager;

    goto :goto_4
.end method
