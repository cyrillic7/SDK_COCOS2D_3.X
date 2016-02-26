.class final Lcom/baidu/bdgame/sdk/obf/cx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cx;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cx;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cx;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cx$1;->a:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 90
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    :goto_6
    return-void

    .line 94
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cx$1;->a:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cx;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cx$1;->a:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cx;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_payment_notice"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/baidu/platformsdk/WebActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1d

    goto :goto_6

    .line 97
    :catch_1d
    move-exception v0

    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cx$1;->a:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cx;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cx$1;->a:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cx;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_tips_cannot_open_webapp"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6
.end method
