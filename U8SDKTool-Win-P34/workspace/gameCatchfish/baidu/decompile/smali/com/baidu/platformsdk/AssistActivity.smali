.class public final Lcom/baidu/platformsdk/AssistActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/bdgame/sdk/obf/i;


# instance fields
.field private b:Lcom/baidu/bdgame/sdk/obf/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Lcom/baidu/bdgame/sdk/obf/i;)V
    .registers 1

    .prologue
    .line 43
    sput-object p0, Lcom/baidu/platformsdk/AssistActivity;->a:Lcom/baidu/bdgame/sdk/obf/i;

    .line 44
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 37
    iget-object v0, p0, Lcom/baidu/platformsdk/AssistActivity;->b:Lcom/baidu/bdgame/sdk/obf/i;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/i;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    invoke-virtual {p0}, Lcom/baidu/platformsdk/AssistActivity;->finish()V

    .line 40
    :cond_e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ks;->a(Landroid/app/Activity;)V

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/AssistActivity;->requestWindowFeature(I)Z

    .line 24
    sget-object v0, Lcom/baidu/platformsdk/AssistActivity;->a:Lcom/baidu/bdgame/sdk/obf/i;

    if-nez v0, :cond_12

    .line 25
    invoke-virtual {p0}, Lcom/baidu/platformsdk/AssistActivity;->finish()V

    .line 33
    :goto_11
    return-void

    .line 29
    :cond_12
    sget-object v0, Lcom/baidu/platformsdk/AssistActivity;->a:Lcom/baidu/bdgame/sdk/obf/i;

    iput-object v0, p0, Lcom/baidu/platformsdk/AssistActivity;->b:Lcom/baidu/bdgame/sdk/obf/i;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/platformsdk/AssistActivity;->a:Lcom/baidu/bdgame/sdk/obf/i;

    .line 32
    iget-object v0, p0, Lcom/baidu/platformsdk/AssistActivity;->b:Lcom/baidu/bdgame/sdk/obf/i;

    invoke-interface {v0, p0}, Lcom/baidu/bdgame/sdk/obf/i;->a(Landroid/app/Activity;)V

    goto :goto_11
.end method
