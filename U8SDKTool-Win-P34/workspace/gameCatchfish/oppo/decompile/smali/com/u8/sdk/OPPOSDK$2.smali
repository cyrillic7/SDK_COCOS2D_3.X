.class Lcom/u8/sdk/OPPOSDK$2;
.super Ljava/lang/Object;
.source "OPPOSDK.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/OPPOSDK;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/OPPOSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/OPPOSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/OPPOSDK$2;->this$0:Lcom/u8/sdk/OPPOSDK;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;I)V
    .registers 7
    .param p1, "resultMsg"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    .line 92
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login cancelled."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 93
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 3
    .param p1, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/u8/sdk/OPPOSDK$2;->this$0:Lcom/u8/sdk/OPPOSDK;

    invoke-virtual {v0}, Lcom/u8/sdk/OPPOSDK;->doGetTokenAndSsoid()V

    .line 87
    return-void
.end method
