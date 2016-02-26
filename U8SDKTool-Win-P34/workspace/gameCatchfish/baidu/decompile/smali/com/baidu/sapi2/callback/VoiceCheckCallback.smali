.class public abstract Lcom/baidu/sapi2/callback/VoiceCheckCallback;
.super Ljava/lang/Object;
.source "VoiceCheckCallback.java"

# interfaces
.implements Lcom/baidu/sapi2/callback/IncompleteUserAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/callback/IncompleteUserAware",
        "<",
        "Lcom/baidu/sapi2/result/VoiceCheckResult;",
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
.method public abstract onAccountTypeConflict(Lcom/baidu/sapi2/result/VoiceCheckResult;)V
.end method
