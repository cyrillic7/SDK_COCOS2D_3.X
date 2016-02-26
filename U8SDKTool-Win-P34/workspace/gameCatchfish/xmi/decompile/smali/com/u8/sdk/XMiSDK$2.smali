.class Lcom/u8/sdk/XMiSDK$2;
.super Ljava/lang/Object;
.source "XMiSDK.java"

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/OnExitListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/XMiSDK;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/XMiSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/XMiSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/XMiSDK$2;->this$0:Lcom/u8/sdk/XMiSDK;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExit(I)V
    .registers 5
    .param p1, "code"    # I

    .prologue
    .line 103
    const-string v0, "errorCode==="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method
