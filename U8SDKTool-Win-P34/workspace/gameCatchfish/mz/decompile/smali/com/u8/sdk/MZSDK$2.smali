.class Lcom/u8/sdk/MZSDK$2;
.super Ljava/lang/Object;
.source "MZSDK.java"

# interfaces
.implements Lcom/meizu/gamecenter/sdk/MzLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/MZSDK;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/MZSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/MZSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/MZSDK$2;->this$0:Lcom/u8/sdk/MZSDK;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginResult(ILcom/meizu/gamecenter/sdk/MzAccountInfo;Ljava/lang/String;)V
    .registers 10
    .param p1, "code"    # I
    .param p2, "accountInfo"    # Lcom/meizu/gamecenter/sdk/MzAccountInfo;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x5

    .line 96
    const-string v2, "U8SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "login code : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    packed-switch p1, :pswitch_data_c4

    .line 118
    :pswitch_22
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "login failed."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 121
    :goto_38
    return-void

    .line 101
    :pswitch_39
    iget-object v2, p0, Lcom/u8/sdk/MZSDK$2;->this$0:Lcom/u8/sdk/MZSDK;

    invoke-virtual {p2}, Lcom/meizu/gamecenter/sdk/MzAccountInfo;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/u8/sdk/MZSDK;->access$0(Lcom/u8/sdk/MZSDK;Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/u8/sdk/MZSDK$2;->this$0:Lcom/u8/sdk/MZSDK;

    invoke-virtual {p2}, Lcom/meizu/gamecenter/sdk/MzAccountInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/u8/sdk/MZSDK;->access$1(Lcom/u8/sdk/MZSDK;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Lcom/meizu/gamecenter/sdk/MzAccountInfo;->getSession()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "session":Ljava/lang/String;
    const-string v2, "U8SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MZLOGIN uid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/u8/sdk/MZSDK$2;->this$0:Lcom/u8/sdk/MZSDK;

    # getter for: Lcom/u8/sdk/MZSDK;->mUid:Ljava/lang/String;
    invoke-static {v4}, Lcom/u8/sdk/MZSDK;->access$2(Lcom/u8/sdk/MZSDK;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "nickname = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/u8/sdk/MZSDK$2;->this$0:Lcom/u8/sdk/MZSDK;

    # getter for: Lcom/u8/sdk/MZSDK;->nickname:Ljava/lang/String;
    invoke-static {v4}, Lcom/u8/sdk/MZSDK;->access$3(Lcom/u8/sdk/MZSDK;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "session"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/u8/sdk/MZSDK$2;->this$0:Lcom/u8/sdk/MZSDK;

    # getter for: Lcom/u8/sdk/MZSDK;->mUid:Ljava/lang/String;
    invoke-static {v4}, Lcom/u8/sdk/MZSDK;->access$2(Lcom/u8/sdk/MZSDK;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/u8/sdk/MZSDK$2;->this$0:Lcom/u8/sdk/MZSDK;

    iget-object v3, p0, Lcom/u8/sdk/MZSDK$2;->this$0:Lcom/u8/sdk/MZSDK;

    # getter for: Lcom/u8/sdk/MZSDK;->nickname:Ljava/lang/String;
    invoke-static {v3}, Lcom/u8/sdk/MZSDK;->access$3(Lcom/u8/sdk/MZSDK;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/u8/sdk/MZSDK$2;->this$0:Lcom/u8/sdk/MZSDK;

    # getter for: Lcom/u8/sdk/MZSDK;->mUid:Ljava/lang/String;
    invoke-static {v4}, Lcom/u8/sdk/MZSDK;->access$2(Lcom/u8/sdk/MZSDK;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/u8/sdk/MZSDK;->encodeLoginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v4, v1}, Lcom/u8/sdk/MZSDK;->access$4(Lcom/u8/sdk/MZSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/u8/sdk/U8SDK;->onLoginResult(Ljava/lang/String;)V

    goto :goto_38

    .line 113
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "session":Ljava/lang/String;
    :pswitch_ab
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "login cancelled."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto/16 :goto_38

    .line 98
    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_39
        :pswitch_22
        :pswitch_ab
    .end packed-switch
.end method
