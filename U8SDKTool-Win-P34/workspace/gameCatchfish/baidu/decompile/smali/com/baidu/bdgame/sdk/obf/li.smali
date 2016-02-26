.class public Lcom/baidu/bdgame/sdk/obf/li;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 15
    const-string v0, "android.permission.SEND_SMS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 33
    :goto_a
    return v0

    .line 20
    :cond_b
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 21
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    move v0, v1

    .line 33
    goto :goto_a

    :pswitch_1c
    move v0, v1

    .line 23
    goto :goto_a

    :pswitch_1e
    move v0, v1

    .line 25
    goto :goto_a

    :pswitch_20
    move v0, v1

    .line 29
    goto :goto_a

    .line 31
    :pswitch_22
    const/4 v0, 0x1

    goto :goto_a

    .line 21
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1c
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_22
    .end packed-switch
.end method
