.class public Lcom/baidu/platformsdk/BaseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ks;->a(Landroid/app/Activity;)V

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 44
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 33
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/bq;->c(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 27
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/bq;->b(Landroid/content/Context;)V

    .line 28
    return-void
.end method
