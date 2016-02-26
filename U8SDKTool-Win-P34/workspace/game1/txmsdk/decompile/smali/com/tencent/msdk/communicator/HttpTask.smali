.class public Lcom/tencent/msdk/communicator/HttpTask;
.super Landroid/os/AsyncTask;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/communicator/HttpTask$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/tencent/msdk/communicator/MHttpRequest;",
        "Ljava/lang/Integer;",
        "Lcom/tencent/msdk/communicator/MHttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private SOCKET_OUT:I

.field private TIME_OUT:I

.field private handler:Landroid/os/Handler;

.field private teaCode:Lcom/tencent/msdk/tea/TEACoding;

.field private what:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .prologue
    const/16 v2, 0x3a98

    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    new-instance v0, Lcom/tencent/msdk/tea/TEACoding;

    sget-object v1, Lcom/tencent/msdk/tea/DesUtils;->REQUEST_KEY:[B

    invoke-direct {v0, v1}, Lcom/tencent/msdk/tea/TEACoding;-><init>([B)V

    iput-object v0, p0, Lcom/tencent/msdk/communicator/HttpTask;->teaCode:Lcom/tencent/msdk/tea/TEACoding;

    .line 39
    iput v2, p0, Lcom/tencent/msdk/communicator/HttpTask;->TIME_OUT:I

    .line 40
    iput v2, p0, Lcom/tencent/msdk/communicator/HttpTask;->SOCKET_OUT:I

    .line 43
    if-nez p1, :cond_19

    .line 44
    const-string v0, "hanlder is null"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 46
    :cond_19
    iput-object p1, p0, Lcom/tencent/msdk/communicator/HttpTask;->handler:Landroid/os/Handler;

    .line 47
    iput p2, p0, Lcom/tencent/msdk/communicator/HttpTask;->what:I

    .line 48
    return-void
.end method

.method private clientParamError(Ljava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/tencent/msdk/communicator/MHttpResponse;

    const/16 v1, 0x3ee

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/msdk/communicator/MHttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private processHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/tencent/msdk/communicator/MHttpResponse;
    .registers 13
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 158
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 159
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    long-to-int v5, v8

    .line 160
    .local v5, "length":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContentLength is\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 161
    if-gez v5, :cond_28

    .line 163
    const-string v8, "response is null"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 164
    const/4 v8, 0x0

    .line 209
    :goto_27
    return-object v8

    .line 167
    :cond_28
    :try_start_28
    const-string v7, ""

    .line 168
    .local v7, "strResult":Ljava/lang/String;
    const/16 v8, 0x7e4

    iget v9, p0, Lcom/tencent/msdk/communicator/HttpTask;->what:I

    if-eq v8, v9, :cond_36

    const/16 v8, 0x7e3

    iget v9, p0, Lcom/tencent/msdk/communicator/HttpTask;->what:I

    if-ne v8, v9, :cond_72

    .line 170
    :cond_36
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    :goto_40
    new-instance v8, Lcom/tencent/msdk/communicator/MHttpResponse;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const-string v10, ""

    invoke-direct {v8, v9, v10, v7}, Lcom/tencent/msdk/communicator/MHttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_4f} :catch_50
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_4f} :catch_126

    goto :goto_27

    .line 204
    .end local v7    # "strResult":Ljava/lang/String;
    :catch_50
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 206
    const/16 v8, 0xbba

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IllegalStateException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v8

    goto :goto_27

    .line 172
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v7    # "strResult":Ljava/lang/String;
    :cond_72
    :try_start_72
    sget-object v8, Lcom/tencent/msdk/communicator/HttpRequestManager;->isEncode:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_179

    .line 173
    new-array v3, v5, [B

    .line 174
    .local v3, "entityBeforeDecode":[B
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 175
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 176
    .local v6, "readContent":I
    :goto_81
    if-ge v6, v5, :cond_149

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContentLength: readContent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v3, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 179
    sub-int v8, v5, v6

    invoke-virtual {v4, v3, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    add-int/2addr v6, v8

    .line 181
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContentLength: get content length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";get byte length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 183
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContentLength: readContent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, -0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, -0x2

    aget-byte v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContentLength: readContent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, -0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, -0x1

    aget-byte v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_124
    .catch Ljava/lang/IllegalStateException; {:try_start_72 .. :try_end_124} :catch_50
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_124} :catch_126

    goto/16 :goto_81

    .line 207
    .end local v3    # "entityBeforeDecode":[B
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "readContent":I
    .end local v7    # "strResult":Ljava/lang/String;
    :catch_126
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 209
    const/16 v8, 0xbbb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v8

    goto/16 :goto_27

    .line 188
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "entityBeforeDecode":[B
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "readContent":I
    .restart local v7    # "strResult":Ljava/lang/String;
    :cond_149
    :try_start_149
    iget-object v8, p0, Lcom/tencent/msdk/communicator/HttpTask;->teaCode:Lcom/tencent/msdk/tea/TEACoding;

    invoke-virtual {v8, v3}, Lcom/tencent/msdk/tea/TEACoding;->decode([B)[B

    move-result-object v2

    .line 189
    .local v2, "entityAfterDecode":[B
    if-nez v2, :cond_15a

    .line 190
    const-string v7, ""

    .line 191
    const-string v8, "entityAfterDecode is null"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_40

    .line 193
    :cond_15a
    new-instance v7, Ljava/lang/String;

    .end local v7    # "strResult":Ljava/lang/String;
    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 194
    .restart local v7    # "strResult":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "strResult:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_40

    .line 198
    .end local v2    # "entityAfterDecode":[B
    .end local v3    # "entityBeforeDecode":[B
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "readContent":I
    :cond_179
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_182
    .catch Ljava/lang/IllegalStateException; {:try_start_149 .. :try_end_182} :catch_50
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_182} :catch_126

    move-result-object v7

    goto/16 :goto_40
.end method

.method private serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Lcom/tencent/msdk/communicator/MHttpResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/tencent/msdk/communicator/MHttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private serverErrorRsp(Ljava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    const/16 v0, 0xbb8

    invoke-direct {p0, v0, p1}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/tencent/msdk/communicator/MHttpRequest;)Lcom/tencent/msdk/communicator/MHttpResponse;
    .registers 11
    .param p1, "params"    # [Lcom/tencent/msdk/communicator/MHttpRequest;

    .prologue
    const/4 v7, 0x0

    .line 64
    array-length v6, p1

    if-nez v6, :cond_10

    .line 66
    const-string v6, "no params"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 67
    const-string v6, "no params"

    invoke-direct {p0, v6}, Lcom/tencent/msdk/communicator/HttpTask;->clientParamError(Ljava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v6

    .line 153
    :goto_f
    return-object v6

    .line 70
    :cond_10
    aget-object v4, p1, v7

    .line 71
    .local v4, "req":Lcom/tencent/msdk/communicator/MHttpRequest;
    if-nez v4, :cond_20

    .line 72
    const-string v6, "HttpRequest is null"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 73
    const-string v6, "HttpRequest is null"

    invoke-direct {p0, v6}, Lcom/tencent/msdk/communicator/HttpTask;->clientParamError(Ljava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v6

    goto :goto_f

    .line 76
    :cond_20
    :try_start_20
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 77
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    iget v7, p0, Lcom/tencent/msdk/communicator/HttpTask;->TIME_OUT:I

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 79
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    iget v7, p0, Lcom/tencent/msdk/communicator/HttpTask;->SOCKET_OUT:I

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    sget-object v6, Lcom/tencent/msdk/communicator/HttpTask$1;->$SwitchMap$com$tencent$msdk$communicator$MHttpRequest$HttpMethod:[I

    invoke-virtual {v4}, Lcom/tencent/msdk/communicator/MHttpRequest;->getMethod()Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2ac

    .line 114
    :cond_47
    :goto_47
    invoke-virtual {v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 115
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v5}, Lcom/tencent/msdk/communicator/HttpTask;->processHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v6

    goto :goto_f

    .line 84
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :pswitch_50
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    .end local v1    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-virtual {v4}, Lcom/tencent/msdk/communicator/MHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v1    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_47

    .line 87
    :pswitch_5a
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    .end local v1    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-virtual {v4}, Lcom/tencent/msdk/communicator/MHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 88
    .restart local v1    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v6, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/16 v6, 0x7e4

    iget v7, p0, Lcom/tencent/msdk/communicator/HttpTask;->what:I

    if-ne v6, v7, :cond_c4

    .line 92
    invoke-virtual {v4}, Lcom/tencent/msdk/communicator/MHttpRequest;->getStrBody()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_47

    .line 93
    move-object v0, v1

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v6, v0

    new-instance v7, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v4}, Lcom/tencent/msdk/communicator/MHttpRequest;->getStrBody()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_86
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_86} :catch_87
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_86} :catch_102
    .catch Ljava/net/SocketException; {:try_start_20 .. :try_end_86} :catch_13f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_20 .. :try_end_86} :catch_17c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_20 .. :try_end_86} :catch_1b9
    .catch Ljava/net/SocketTimeoutException; {:try_start_20 .. :try_end_86} :catch_1f6
    .catch Ljava/net/UnknownHostException; {:try_start_20 .. :try_end_86} :catch_233
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_86} :catch_270

    goto :goto_47

    .line 116
    .end local v1    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_87
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalStateException, msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 119
    const/16 v6, 0xbba

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalStateException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v6

    goto/16 :goto_f

    .line 96
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_c4
    :try_start_c4
    sget-object v6, Lcom/tencent/msdk/communicator/HttpRequestManager;->isEncode:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_da

    .line 97
    const-string v6, "Content-Encrypt"

    const-string v7, "msdktea"

    invoke-virtual {v1, v6, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v6, "Accept-Encrypt"

    const-string v7, "msdktea"

    invoke-virtual {v1, v6, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_da
    move-object v0, v1

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v6, v0

    new-instance v7, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v4}, Lcom/tencent/msdk/communicator/MHttpRequest;->getBody()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 101
    move-object v0, v1

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.protocol.expect-continue"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 103
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V
    :try_end_100
    .catch Ljava/lang/IllegalStateException; {:try_start_c4 .. :try_end_100} :catch_87
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c4 .. :try_end_100} :catch_102
    .catch Ljava/net/SocketException; {:try_start_c4 .. :try_end_100} :catch_13f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c4 .. :try_end_100} :catch_17c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c4 .. :try_end_100} :catch_1b9
    .catch Ljava/net/SocketTimeoutException; {:try_start_c4 .. :try_end_100} :catch_1f6
    .catch Ljava/net/UnknownHostException; {:try_start_c4 .. :try_end_100} :catch_233
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_100} :catch_270

    goto/16 :goto_47

    .line 120
    .end local v1    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_102
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException, msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 123
    const/16 v6, 0xbbc

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalArgumentException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v6

    goto/16 :goto_f

    .line 124
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_13f
    move-exception v2

    .line 125
    .local v2, "e":Ljava/net/SocketException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SocketException, msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    .line 127
    const/16 v6, 0xbbd

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SocketException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v6

    goto/16 :goto_f

    .line 128
    .end local v2    # "e":Ljava/net/SocketException;
    :catch_17c
    move-exception v2

    .line 129
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClientProtocolException, msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 131
    const/16 v6, 0xbbe

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientProtocolException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v6

    goto/16 :goto_f

    .line 132
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1b9
    move-exception v2

    .line 134
    .local v2, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConnectTimeoutException, msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 136
    const/16 v6, 0xbb9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConnectTimeoutException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v6

    goto/16 :goto_f

    .line 138
    .end local v2    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_1f6
    move-exception v2

    .line 140
    .local v2, "e":Ljava/net/SocketTimeoutException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SocketTimeoutException, msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 142
    const/16 v6, 0xbc0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SocketTimeoutException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v6

    goto/16 :goto_f

    .line 144
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_233
    move-exception v2

    .line 146
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnknownHostException, msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 148
    const/16 v6, 0xbbf

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UnknownHostException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v6

    goto/16 :goto_f

    .line 150
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :catch_270
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnknownException, msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnknownException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(Ljava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v6

    goto/16 :goto_f

    .line 82
    nop

    :pswitch_data_2ac
    .packed-switch 0x1
        :pswitch_50
        :pswitch_5a
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, [Lcom/tencent/msdk/communicator/MHttpRequest;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/communicator/HttpTask;->doInBackground([Lcom/tencent/msdk/communicator/MHttpRequest;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/tencent/msdk/communicator/MHttpResponse;)V
    .registers 8
    .param p1, "result"    # Lcom/tencent/msdk/communicator/MHttpResponse;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 217
    if-nez p1, :cond_14

    .line 218
    const-string v2, "network return null!!!"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 219
    new-instance p1, Lcom/tencent/msdk/communicator/MHttpResponse;

    .end local p1    # "result":Lcom/tencent/msdk/communicator/MHttpResponse;
    const/16 v2, 0x3ea

    const-string v3, "response no params"

    const/4 v4, 0x0

    invoke-direct {p1, v2, v3, v4}, Lcom/tencent/msdk/communicator/MHttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    .restart local p1    # "result":Lcom/tencent/msdk/communicator/MHttpResponse;
    :cond_14
    invoke-virtual {p1}, Lcom/tencent/msdk/communicator/MHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result body is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/msdk/communicator/MHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 228
    :goto_39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 229
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "http_rsp"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 231
    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpTask;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_5c

    .line 232
    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpTask;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/tencent/msdk/communicator/HttpTask;->what:I

    invoke-virtual {p1}, Lcom/tencent/msdk/communicator/MHttpResponse;->getStatus()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 233
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 234
    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    .end local v1    # "message":Landroid/os/Message;
    :cond_5c
    return-void

    .line 225
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_5d
    const-string v2, "result body is null"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_39
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Lcom/tencent/msdk/communicator/MHttpResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/communicator/HttpTask;->onPostExecute(Lcom/tencent/msdk/communicator/MHttpResponse;)V

    return-void
.end method
