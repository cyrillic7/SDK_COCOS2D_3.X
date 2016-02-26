.class public Lcom/baidu/bdgame/sdk/obf/jf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 61
    const-string v0, "bdp_paycenter_tip_input_null"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 110
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    return-void
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/String;III)V
    .registers 8

    .prologue
    .line 32
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x22

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestOrder .. "

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChannelPayCent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/jd;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TotalPriceCent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 70
    const-string v0, "bdp_paycenter_tip_input_error_amount"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    return-void
.end method

.method public static b(Landroid/widget/TextView;Ljava/lang/String;III)V
    .registers 8

    .prologue
    .line 49
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 79
    const-string v0, "bdp_paycenter_tip_payment_network_error"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 88
    const-string v0, "bdp_paycenter_tips_paychannel_error"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 97
    const-string v0, "bdp_paycenter_tips_un_order"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 106
    const-string v0, "bdp_paycenter_tips_request_fali"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 138
    const-string v0, "bdp_paycenter_pay_money_only_number"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    return-void
.end method
