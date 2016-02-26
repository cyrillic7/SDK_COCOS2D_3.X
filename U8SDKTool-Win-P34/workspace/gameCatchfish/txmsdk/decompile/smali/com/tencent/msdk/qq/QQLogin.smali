.class public Lcom/tencent/msdk/qq/QQLogin;
.super Ljava/lang/Object;
.source "QQLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/qq/QQLogin$QQLoginCallback;
    }
.end annotation


# instance fields
.field private requestStartTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/qq/QQLogin;->requestStartTime:J

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/qq/QQLogin;)J
    .registers 3
    .param p0, "x0"    # Lcom/tencent/msdk/qq/QQLogin;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/tencent/msdk/qq/QQLogin;->requestStartTime:J

    return-wide v0
.end method


# virtual methods
.method public lauchQQPlatForm()V
    .registers 7

    .prologue
    .line 31
    const-string v2, "lauchQQPlatForm"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/WeGame;->getTencent()Lcom/tencent/tauth/Tencent;

    move-result-object v1

    .line 33
    .local v1, "tencent":Lcom/tencent/tauth/Tencent;
    if-nez v1, :cond_10

    .line 47
    :cond_f
    :goto_f
    return-void

    .line 36
    :cond_10
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    sget v3, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    invoke-virtual {v2, v3}, Lcom/tencent/msdk/WeGame;->setPlatId(I)V

    .line 37
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/WeGame;->checkQQEnv()I

    move-result v0

    .line 38
    .local v0, "code":I
    if-nez v0, :cond_f

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/msdk/qq/QQLogin;->requestStartTime:J

    .line 42
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    .line 43
    const-string v2, ""

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/msdk/WeGame;->mPermission:Ljava/lang/String;

    new-instance v4, Lcom/tencent/msdk/qq/QQLogin$QQLoginCallback;

    const-string v5, "loginAction"

    invoke-direct {v4, p0, v5}, Lcom/tencent/msdk/qq/QQLogin$QQLoginCallback;-><init>(Lcom/tencent/msdk/qq/QQLogin;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    goto :goto_f
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 51
    const/16 v0, 0x2774

    if-ne p1, v0, :cond_1a

    .line 52
    const/16 v0, 0x2775

    if-ne p2, v0, :cond_1a

    .line 53
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getTencent()Lcom/tencent/tauth/Tencent;

    move-result-object v0

    new-instance v1, Lcom/tencent/msdk/qq/QQLogin$QQLoginCallback;

    const-string v2, "onActivityResult"

    invoke-direct {v1, p0, v2}, Lcom/tencent/msdk/qq/QQLogin$QQLoginCallback;-><init>(Lcom/tencent/msdk/qq/QQLogin;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Lcom/tencent/tauth/Tencent;->handleLoginData(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    .line 59
    :cond_1a
    return-void
.end method
