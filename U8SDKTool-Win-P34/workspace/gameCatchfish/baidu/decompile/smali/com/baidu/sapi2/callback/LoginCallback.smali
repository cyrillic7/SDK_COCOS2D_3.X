.class public abstract Lcom/baidu/sapi2/callback/LoginCallback;
.super Ljava/lang/Object;
.source "LoginCallback.java"

# interfaces
.implements Lcom/baidu/sapi2/callback/CaptchaAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/callback/CaptchaAware",
        "<",
        "Lcom/baidu/sapi2/result/LoginResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onLoginTypeConflict(Lcom/baidu/sapi2/result/LoginResult;)V
.end method

.method public abstract onProxyActionRequired(Lcom/baidu/sapi2/result/LoginResult;)V
.end method
