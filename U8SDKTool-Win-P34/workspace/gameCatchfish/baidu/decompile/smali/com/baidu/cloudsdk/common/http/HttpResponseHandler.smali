.class public Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.super Landroid/os/Handler;
.source "HttpResponseHandler.java"


# static fields
.field protected static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I


# instance fields
.field protected mDefaultCharset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "defaultCharset"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->mDefaultCharset:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3a

    .line 219
    :goto_7
    return-void

    .line 199
    :pswitch_8
    invoke-virtual {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onStart()V

    goto :goto_7

    .line 203
    :pswitch_c
    invoke-virtual {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFinish()V

    goto :goto_7

    .line 207
    :pswitch_10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 208
    .local v0, "objs":[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Throwable;

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_7

    .line 212
    .end local v0    # "objs":[Ljava/lang/Object;
    :pswitch_23
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 213
    .restart local v0    # "objs":[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->handleSuccessMessage(ILjava/lang/String;)V

    goto :goto_7

    .line 197
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_23
        :pswitch_10
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method protected handleSuccessMessage(ILjava/lang/String;)V
    .registers 3
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 182
    return-void
.end method

.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method

.method protected onFinish()V
    .registers 1

    .prologue
    .line 60
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 53
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 3
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-virtual {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;[B)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # [B

    .prologue
    const/4 v2, 0x1

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return-void
.end method

.method protected sendFinishMessage()V
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method

.method protected sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .registers 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, "responseBody":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 148
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_10

    .line 150
    :try_start_7
    iget-object v4, p0, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->mDefaultCharset:Ljava/lang/String;

    invoke-static {v1, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_2d
    .catchall {:try_start_7 .. :try_end_c} :catchall_38

    move-result-object v2

    .line 155
    invoke-static {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    .line 159
    :cond_10
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 160
    .local v3, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0x12c

    if-lt v4, v5, :cond_3d

    .line 161
    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4, v2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 167
    .end local v3    # "status":Lorg/apache/http/StatusLine;
    :goto_2c
    return-void

    .line 151
    :catch_2d
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_2f
    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_38

    .line 155
    invoke-static {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    goto :goto_2c

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_38
    move-exception v4

    invoke-static {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    throw v4

    .line 165
    .restart local v3    # "status":Lorg/apache/http/StatusLine;
    :cond_3d
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendSuccessMessage(ILjava/lang/String;)V

    goto :goto_2c
.end method

.method protected sendStartMessage()V
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 100
    return-void
.end method

.method protected sendSuccessMessage(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    return-void
.end method
