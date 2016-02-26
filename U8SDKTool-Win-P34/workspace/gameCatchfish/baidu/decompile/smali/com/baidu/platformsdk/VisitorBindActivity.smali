.class public Lcom/baidu/platformsdk/VisitorBindActivity;
.super Lcom/baidu/platformsdk/LoginWatchActivity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/ce;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;-><init>()V

    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    const-string v1, "intent_key_callback_result_code"

    const/16 v2, -0x7d1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const-string v1, "intent_key_callback_result_desc"

    const-string v2, "bdp_passport_visitor_bind_cancel"

    invoke-static {p0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/platformsdk/VisitorBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/baidu/platformsdk/VisitorBindActivity;->setResult(ILandroid/content/Intent;)V

    .line 53
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/platformsdk/VisitorBindActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/platformsdk/VisitorBindActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ce;->a(IILandroid/content/Intent;)V

    .line 65
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/platformsdk/VisitorBindActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->c()Z

    move-result v0

    if-nez v0, :cond_b

    .line 58
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onBackPressed()V

    .line 60
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    iget-object v0, p0, Lcom/baidu/platformsdk/VisitorBindActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->d()V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lcom/baidu/platformsdk/VisitorBindActivity;->b()V

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_10

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/VisitorBindActivity;->setFinishOnTouchOutside(Z)V

    .line 34
    :cond_10
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_blank"

    invoke-static {p0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 36
    if-nez v1, :cond_4f

    .line 37
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lj;->c(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 41
    :goto_2f
    invoke-virtual {p0, v0, v1}, Lcom/baidu/platformsdk/VisitorBindActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/VisitorBindActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    .line 43
    invoke-virtual {p0}, Lcom/baidu/platformsdk/VisitorBindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/baidu/platformsdk/VisitorBindActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/mt;

    iget-object v3, p0, Lcom/baidu/platformsdk/VisitorBindActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v2, v3}, Lcom/baidu/bdgame/sdk/obf/mt;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    invoke-virtual {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 45
    return-void

    .line 39
    :cond_4f
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lj;->c(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2f
.end method
