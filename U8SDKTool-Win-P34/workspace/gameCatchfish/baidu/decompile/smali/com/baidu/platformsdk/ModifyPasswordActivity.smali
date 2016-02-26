.class public Lcom/baidu/platformsdk/ModifyPasswordActivity;
.super Lcom/baidu/platformsdk/LoginWatchActivity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "bundle_key_user"


# instance fields
.field private b:Lcom/baidu/bdgame/sdk/obf/ce;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/platformsdk/ModifyPasswordActivity;->b:Lcom/baidu/bdgame/sdk/obf/ce;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/platformsdk/ModifyPasswordActivity;->b:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ce;->a(IILandroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/platformsdk/ModifyPasswordActivity;->b:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->c()Z

    move-result v0

    if-nez v0, :cond_b

    .line 50
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onBackPressed()V

    .line 52
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    iget-object v0, p0, Lcom/baidu/platformsdk/ModifyPasswordActivity;->b:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->d()V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_d

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/ModifyPasswordActivity;->setFinishOnTouchOutside(Z)V

    .line 34
    :cond_d
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
    if-nez v1, :cond_4c

    .line 37
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lj;->c(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 41
    :goto_2c
    invoke-virtual {p0, v0, v1}, Lcom/baidu/platformsdk/ModifyPasswordActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/ModifyPasswordActivity;->b:Lcom/baidu/bdgame/sdk/obf/ce;

    .line 43
    invoke-virtual {p0}, Lcom/baidu/platformsdk/ModifyPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/baidu/platformsdk/ModifyPasswordActivity;->b:Lcom/baidu/bdgame/sdk/obf/ce;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/mi;

    iget-object v3, p0, Lcom/baidu/platformsdk/ModifyPasswordActivity;->b:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v2, v3}, Lcom/baidu/bdgame/sdk/obf/mi;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    invoke-virtual {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 45
    return-void

    .line 39
    :cond_4c
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lj;->c(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2c
.end method
