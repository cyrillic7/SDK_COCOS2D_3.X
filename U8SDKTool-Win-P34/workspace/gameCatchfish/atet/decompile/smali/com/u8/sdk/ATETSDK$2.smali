.class Lcom/u8/sdk/ATETSDK$2;
.super Ljava/lang/Object;
.source "ATETSDK.java"

# interfaces
.implements Lcom/atet/api/pay/ui/service/IAccountExCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ATETSDK;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/ATETSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ATETSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/ATETSDK$2;->this$0:Lcom/u8/sdk/ATETSDK;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;J)V
    .registers 10
    .param p1, "retcode"    # I
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "uid"    # J

    .prologue
    const/4 v4, 0x5

    .line 106
    const/16 v1, 0x7d1

    if-ne p1, v1, :cond_23

    .line 108
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/u8/sdk/ATETSDK$2;->this$0:Lcom/u8/sdk/ATETSDK;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/u8/sdk/ATETSDK;->encodeLoginResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p2, v2}, Lcom/u8/sdk/ATETSDK;->access$0(Lcom/u8/sdk/ATETSDK;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/u8/sdk/U8SDK;->onLoginResult(Ljava/lang/String;)V

    .line 116
    .end local v0    # "result":Ljava/lang/String;
    :cond_22
    :goto_22
    return-void

    .line 111
    :cond_23
    const/16 v1, 0x7d3

    if-ne p1, v1, :cond_3e

    .line 112
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login cancelled."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_22

    .line 113
    :cond_3e
    const/16 v1, 0x7d2

    if-ne p1, v1, :cond_22

    .line 114
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login failed."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_22
.end method
