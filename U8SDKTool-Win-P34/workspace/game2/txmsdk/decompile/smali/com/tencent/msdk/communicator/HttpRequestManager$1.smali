.class Lcom/tencent/msdk/communicator/HttpRequestManager$1;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/communicator/HttpRequestManager;->initHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/communicator/HttpRequestManager;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/communicator/HttpRequestManager;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/msdk/communicator/HttpRequestManager$1;->this$0:Lcom/tencent/msdk/communicator/HttpRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x3ea

    const/4 v6, 0x0

    .line 37
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_11

    .line 38
    :cond_b
    const-string v2, "msg || msg.getData() is null"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 86
    :goto_10
    return v6

    .line 41
    :cond_11
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 42
    .local v1, "statusCode":I
    packed-switch v1, :pswitch_data_1d4

    .line 63
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "http_rsp"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/communicator/MHttpResponse;

    .line 64
    .local v0, "rsp":Lcom/tencent/msdk/communicator/MHttpResponse;
    if-nez v0, :cond_10a

    .line 65
    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpRequestManager$1;->this$0:Lcom/tencent/msdk/communicator/HttpRequestManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response no params"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/tencent/msdk/communicator/HttpRequestManager;->notifyRequestfailure(Ljava/lang/Integer;Ljava/lang/String;I)V
    invoke-static {v2, v3, v4, v1}, Lcom/tencent/msdk/communicator/HttpRequestManager;->access$000(Lcom/tencent/msdk/communicator/HttpRequestManager;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HTTP_Failed statusCode\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_10

    .line 44
    .end local v0    # "rsp":Lcom/tencent/msdk/communicator/MHttpResponse;
    :pswitch_65
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "http_rsp"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/communicator/MHttpResponse;

    .line 45
    .restart local v0    # "rsp":Lcom/tencent/msdk/communicator/MHttpResponse;
    if-nez v0, :cond_9a

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HTTP_SUCCESS, response params but body is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpRequestManager$1;->this$0:Lcom/tencent/msdk/communicator/HttpRequestManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "response no params"

    # invokes: Lcom/tencent/msdk/communicator/HttpRequestManager;->notifyRequestfailure(Ljava/lang/Integer;Ljava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/tencent/msdk/communicator/HttpRequestManager;->access$000(Lcom/tencent/msdk/communicator/HttpRequestManager;Ljava/lang/Integer;Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 51
    :cond_9a
    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d5

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HTTP_SUCCESS and rsp.getStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",response params but body is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpRequestManager$1;->this$0:Lcom/tencent/msdk/communicator/HttpRequestManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "response params but body is null"

    # invokes: Lcom/tencent/msdk/communicator/HttpRequestManager;->notifyRequestfailure(Ljava/lang/Integer;Ljava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/tencent/msdk/communicator/HttpRequestManager;->access$000(Lcom/tencent/msdk/communicator/HttpRequestManager;Ljava/lang/Integer;Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 57
    :cond_d5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HTTP_SUCCESS, status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpRequestManager$1;->this$0:Lcom/tencent/msdk/communicator/HttpRequestManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getStatus()I

    move-result v5

    # invokes: Lcom/tencent/msdk/communicator/HttpRequestManager;->notifyRequestSuccess(Ljava/lang/Integer;Ljava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/tencent/msdk/communicator/HttpRequestManager;->access$100(Lcom/tencent/msdk/communicator/HttpRequestManager;Ljava/lang/Integer;Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 71
    :cond_10a
    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MHttpResponse.HTTP_Failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getMsg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_163

    .line 74
    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpRequestManager$1;->this$0:Lcom/tencent/msdk/communicator/HttpRequestManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "response params but body and msg are null"

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getStatus()I

    move-result v5

    # invokes: Lcom/tencent/msdk/communicator/HttpRequestManager;->notifyRequestfailure(Ljava/lang/Integer;Ljava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/tencent/msdk/communicator/HttpRequestManager;->access$000(Lcom/tencent/msdk/communicator/HttpRequestManager;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MHttpResponse.HTTP_Failed 1, statusCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1aresponse params but body and msg are null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 78
    :cond_163
    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpRequestManager$1;->this$0:Lcom/tencent/msdk/communicator/HttpRequestManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getStatus()I

    move-result v5

    # invokes: Lcom/tencent/msdk/communicator/HttpRequestManager;->notifyRequestfailure(Ljava/lang/Integer;Ljava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/tencent/msdk/communicator/HttpRequestManager;->access$000(Lcom/tencent/msdk/communicator/HttpRequestManager;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MHttpResponse.HTTP_Failed 2, statusCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 82
    :cond_1a0
    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpRequestManager$1;->this$0:Lcom/tencent/msdk/communicator/HttpRequestManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getStatus()I

    move-result v5

    # invokes: Lcom/tencent/msdk/communicator/HttpRequestManager;->notifyRequestfailure(Ljava/lang/Integer;Ljava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/tencent/msdk/communicator/HttpRequestManager;->access$000(Lcom/tencent/msdk/communicator/HttpRequestManager;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MHttpResponse.HTTP_Failed 3, statusCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/msdk/communicator/MHttpResponse;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 42
    :pswitch_data_1d4
    .packed-switch 0xc8
        :pswitch_65
    .end packed-switch
.end method
