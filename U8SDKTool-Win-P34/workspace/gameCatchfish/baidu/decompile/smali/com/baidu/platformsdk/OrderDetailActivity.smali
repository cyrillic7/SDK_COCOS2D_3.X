.class public Lcom/baidu/platformsdk/OrderDetailActivity;
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

.field private b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;-><init>()V

    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/baidu/platformsdk/OrderDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    .line 45
    invoke-virtual {p0}, Lcom/baidu/platformsdk/OrderDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v1

    .line 46
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    .line 47
    iget-object v0, p0, Lcom/baidu/platformsdk/OrderDetailActivity;->b:Landroid/view/ViewGroup;

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 51
    :cond_1d
    :goto_1d
    return-void

    .line 48
    :cond_1e
    if-nez v0, :cond_1d

    .line 49
    iget-object v0, p0, Lcom/baidu/platformsdk/OrderDetailActivity;->b:Landroid/view/ViewGroup;

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1d
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/platformsdk/OrderDetailActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/platformsdk/OrderDetailActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ce;->a(IILandroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/platformsdk/OrderDetailActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->c()Z

    move-result v0

    if-nez v0, :cond_b

    .line 68
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onBackPressed()V

    .line 70
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    invoke-virtual {p0}, Lcom/baidu/platformsdk/OrderDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v0

    .line 57
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 58
    iget-object v1, p0, Lcom/baidu/platformsdk/OrderDetailActivity;->b:Landroid/view/ViewGroup;

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 62
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/baidu/platformsdk/OrderDetailActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->d()V

    .line 63
    return-void

    .line 59
    :cond_20
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 60
    iget-object v1, p0, Lcom/baidu/platformsdk/OrderDetailActivity;->b:Landroid/view/ViewGroup;

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 27
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/baidu/platformsdk/OrderDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/platformsdk/OrderDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_transparent"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1f

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/OrderDetailActivity;->setFinishOnTouchOutside(Z)V

    .line 33
    :cond_1f
    const-string v0, "bdp_paycenter_blank"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/OrderDetailActivity;->setContentView(I)V

    .line 34
    const-string v0, "bdp_paycenter_main"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/baidu/platformsdk/OrderDetailActivity;->b:Landroid/view/ViewGroup;

    .line 35
    iget-object v0, p0, Lcom/baidu/platformsdk/OrderDetailActivity;->b:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/OrderDetailActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    .line 36
    invoke-virtual {p0}, Lcom/baidu/platformsdk/OrderDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/baidu/platformsdk/OrderDetailActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ck;

    iget-object v3, p0, Lcom/baidu/platformsdk/OrderDetailActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ck;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    invoke-virtual {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lcom/baidu/platformsdk/OrderDetailActivity;->b()V

    .line 39
    invoke-virtual {p0}, Lcom/baidu/platformsdk/OrderDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 41
    return-void
.end method
