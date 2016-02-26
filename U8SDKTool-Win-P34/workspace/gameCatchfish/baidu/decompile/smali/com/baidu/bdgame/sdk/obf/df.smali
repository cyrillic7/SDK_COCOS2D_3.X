.class public Lcom/baidu/bdgame/sdk/obf/df;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    .line 19
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    const-string v1, "AliPay"

    const-string v2, "bdp_paycenter_img_zhifubao"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    const-string v1, "RechargeCardPay"

    const-string v2, "bdp_paycenter_img_chongzhika"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    const-string v1, "QuickPay"

    const-string v2, "bdp_paycenter_img_credit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    const-string v1, "BankCardPay"

    const-string v2, "bdp_paycenter_img_yinhangka"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    const-string v1, "Mo9Pay"

    const-string v2, "bdp_paycenter_img_mo9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    const-string v1, "TencentPay"

    const-string v2, "bdp_paycenter_img_caifutong"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    const-string v1, "GameCardPay"

    const-string v2, "bdp_paycenter_img_youxika"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    const-string v1, "KubiPay"

    const-string v2, "bdp_paycenter_img_kubi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    const-string v1, "Bean91Pay"

    const-string v2, "bdp_paycenter_img_91bi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    const-string v1, "BaiduPay"

    const-string v2, "bdp_paycenter_img_baifubao"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    const-string v1, "FreeBaiduBean"

    const-string v2, "bdp_paycenter_img_freebaidubean"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    const-string v1, "QQWalletPay"

    const-string v2, "bdp_paycenter_img_qwallet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    const-string v1, "YiBaoCashCardPay"

    const-string v2, "bdp_paycenter_img_cashcard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)I
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dp;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_26

    .line 74
    :sswitch_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 63
    :sswitch_9
    const-string v0, "bdp_bg_pay_icon_mark_discount"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    .line 66
    :sswitch_10
    const-string v0, "bdp_bg_pay_icon_mark_rebate"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    .line 68
    :sswitch_17
    const-string v0, "bdp_bg_pay_icon_mark_recommend"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    .line 71
    :sswitch_1e
    const-string v0, "bdp_bg_pay_icon_mark_minus"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    .line 59
    nop

    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_9
        0x2 -> :sswitch_10
        0x3 -> :sswitch_17
        0x63 -> :sswitch_1e
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/df;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
