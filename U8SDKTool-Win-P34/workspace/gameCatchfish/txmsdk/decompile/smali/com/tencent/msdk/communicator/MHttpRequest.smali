.class public Lcom/tencent/msdk/communicator/MHttpRequest;
.super Ljava/lang/Object;
.source "MHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;
    }
.end annotation


# instance fields
.field private body:[B

.field private method:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

.field private params:Landroid/os/Bundle;

.field private strBody:Ljava/lang/String;

.field private teaCode:Lcom/tencent/msdk/tea/TEACoding;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->url:Ljava/lang/String;

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->params:Landroid/os/Bundle;

    .line 17
    new-instance v0, Lcom/tencent/msdk/tea/TEACoding;

    sget-object v1, Lcom/tencent/msdk/tea/DesUtils;->REQUEST_KEY:[B

    invoke-direct {v0, v1}, Lcom/tencent/msdk/tea/TEACoding;-><init>([B)V

    iput-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->teaCode:Lcom/tencent/msdk/tea/TEACoding;

    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public getBody()[B
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->body:[B

    return-object v0
.end method

.method public getMethod()Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->method:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStrBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->strBody:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 4
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lcom/tencent/msdk/communicator/HttpRequestManager;->isEncode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 59
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->teaCode:Lcom/tencent/msdk/tea/TEACoding;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/tea/TEACoding;->encode([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->body:[B

    .line 63
    :goto_14
    return-void

    .line 61
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->body:[B

    goto :goto_14
.end method

.method public setBody([B)V
    .registers 2
    .param p1, "body"    # [B

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->body:[B

    .line 54
    return-void
.end method

.method public setMethod(Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;)V
    .registers 2
    .param p1, "method"    # Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->method:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    .line 42
    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->params:Landroid/os/Bundle;

    .line 34
    return-void
.end method

.method public setStrBody(Ljava/lang/String;)V
    .registers 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->strBody:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->url:Ljava/lang/String;

    .line 26
    return-void
.end method
