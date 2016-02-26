.class public Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "BinaryHttpResponseHandler.java"


# instance fields
.field private mAllowedContentTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image/png"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 5
    .param p1, "allowedContentTypes"    # [Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image/png"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;[B)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "binaryData"    # [B

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;[B)V

    .line 152
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3a

    .line 168
    :goto_7
    invoke-super {p0, p1}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 171
    :goto_a
    return-void

    .line 159
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 160
    .local v0, "objs":[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v3

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {p0, v2, v1}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->handleSuccessMessage(I[B)V

    goto :goto_a

    .line 164
    .end local v0    # "objs":[Ljava/lang/Object;
    :pswitch_24
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 165
    .restart local v0    # "objs":[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Throwable;

    aget-object v2, v0, v3

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {p0, v1, v2}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_7

    .line 157
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_24
    .end packed-switch
.end method

.method protected handleSuccessMessage(I[B)V
    .registers 3
    .param p1, "statusCode"    # I
    .param p2, "binaryData"    # [B

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->onSuccess(I[B)V

    .line 142
    return-void
.end method

.method protected onFailure(Ljava/lang/Throwable;[B)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "binaryData"    # [B

    .prologue
    .line 51
    return-void
.end method

.method protected onSuccess(I[B)V
    .registers 3
    .param p1, "statusCode"    # I
    .param p2, "binaryData"    # [B

    .prologue
    .line 69
    invoke-virtual {p0, p2}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->onSuccess([B)V

    .line 70
    return-void
.end method

.method protected onSuccess([B)V
    .registers 2
    .param p1, "binaryData"    # [B

    .prologue
    .line 60
    return-void
.end method

.method protected sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .registers 16
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 89
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    .line 91
    .local v10, "status":Lorg/apache/http/StatusLine;
    const-string v11, "Content-Type"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 92
    .local v3, "contentTypeHeaders":[Lorg/apache/http/Header;
    array-length v11, v3

    const/4 v12, 0x1

    if-eq v11, v12, :cond_20

    .line 93
    new-instance v12, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const-string v13, "None or more than one Content-Type Header found!"

    invoke-direct {v12, v11, v13}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    const/4 v11, 0x0

    check-cast v11, [B

    invoke-virtual {p0, v12, v11}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    .line 132
    :goto_1f
    return-void

    .line 98
    :cond_20
    const/4 v11, 0x0

    aget-object v2, v3, v11

    .line 99
    .local v2, "contentTypeHeader":Lorg/apache/http/Header;
    const/4 v6, 0x0

    .line 100
    .local v6, "foundAllowedContentType":Z
    iget-object v1, p0, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_28
    if-ge v7, v8, :cond_37

    aget-object v0, v1, v7

    .line 101
    .local v0, "anAllowedContentType":Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4b

    .line 102
    const/4 v6, 0x1

    .line 106
    .end local v0    # "anAllowedContentType":Ljava/lang/String;
    :cond_37
    if-nez v6, :cond_4e

    .line 107
    new-instance v12, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const-string v13, "Content-Type not allowed!"

    invoke-direct {v12, v11, v13}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    const/4 v11, 0x0

    check-cast v11, [B

    invoke-virtual {p0, v12, v11}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_1f

    .line 100
    .restart local v0    # "anAllowedContentType":Ljava/lang/String;
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 112
    .end local v0    # "anAllowedContentType":Ljava/lang/String;
    :cond_4e
    const/4 v9, 0x0

    .line 113
    .local v9, "responseBody":[B
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 114
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_5c

    .line 116
    :try_start_55
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_75
    .catchall {:try_start_55 .. :try_end_58} :catchall_80

    move-result-object v9

    .line 121
    invoke-static {v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    .line 125
    :cond_5c
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0x12c

    if-lt v11, v12, :cond_85

    .line 126
    new-instance v11, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v11, v9}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_1f

    .line 117
    :catch_75
    move-exception v4

    .line 118
    .local v4, "e":Ljava/io/IOException;
    const/4 v11, 0x0

    :try_start_77
    check-cast v11, [B

    invoke-virtual {p0, v4, v11}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_80

    .line 121
    invoke-static {v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    goto :goto_1f

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_80
    move-exception v11

    invoke-static {v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    throw v11

    .line 130
    :cond_85
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {p0, v11, v9}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->sendSuccessMessage(I[B)V

    goto :goto_1f
.end method

.method protected sendSuccessMessage(I[B)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "binaryData"    # [B

    .prologue
    const/4 v2, 0x0

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    return-void
.end method
