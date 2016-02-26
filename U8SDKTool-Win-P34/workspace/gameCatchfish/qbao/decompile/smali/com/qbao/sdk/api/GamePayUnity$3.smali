.class Lcom/qbao/sdk/api/GamePayUnity$3;
.super Ljava/lang/Object;
.source "GamePayUnity.java"

# interfaces
.implements Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/api/GamePayUnity;->exit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cP:Ljava/lang/String;

.field private final synthetic cQ:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/api/GamePayUnity$3;->cP:Ljava/lang/String;

    iput-object p2, p0, Lcom/qbao/sdk/api/GamePayUnity$3;->cQ:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelExit()V
    .registers 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qbao/sdk/api/GamePayUnity$3;->cP:Ljava/lang/String;

    iget-object v1, p0, Lcom/qbao/sdk/api/GamePayUnity$3;->cQ:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public onConfirmExit()V
    .registers 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qbao/sdk/api/GamePayUnity$3;->cP:Ljava/lang/String;

    iget-object v1, p0, Lcom/qbao/sdk/api/GamePayUnity$3;->cQ:Ljava/lang/String;

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method
