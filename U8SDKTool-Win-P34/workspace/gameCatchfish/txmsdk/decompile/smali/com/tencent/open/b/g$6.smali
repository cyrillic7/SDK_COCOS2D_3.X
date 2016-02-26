.class Lcom/tencent/open/b/g$6;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/tencent/open/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/g;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    .prologue
    .line 731
    iput-object p1, p0, Lcom/tencent/open/b/g$6;->e:Lcom/tencent/open/b/g;

    iput-object p2, p0, Lcom/tencent/open/b/g$6;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/tencent/open/b/g$6;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/tencent/open/b/g$6;->c:Z

    iput-object p5, p0, Lcom/tencent/open/b/g$6;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 736
    :try_start_2
    iget-object v1, p0, Lcom/tencent/open/b/g$6;->a:Landroid/os/Bundle;

    if-nez v1, :cond_e

    .line 737
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->httpRequest, params is null!"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :goto_d
    return-void

    .line 742
    :cond_e
    invoke-static {}, Lcom/tencent/open/b/e;->a()I

    move-result v1

    .line 743
    if-nez v1, :cond_bf

    const/4 v1, 0x3

    move v4, v1

    .line 745
    :goto_16
    const-string v1, "openSDK_LOG.ReportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->httpRequest, retryCount: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/open/b/g$6;->b:Ljava/lang/String;

    invoke-static {v1, v3, v5}, Lcom/tencent/open/utils/HttpUtils;->getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v5

    .line 750
    iget-object v1, p0, Lcom/tencent/open/b/g$6;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 751
    iget-boolean v3, p0, Lcom/tencent/open/b/g$6;->c:Z

    if-eqz v3, :cond_126

    .line 752
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 755
    :goto_48
    iget-object v1, p0, Lcom/tencent/open/b/g$6;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "GET"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 756
    new-instance v6, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/tencent/open/b/g$6;->b:Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    .line 770
    :goto_6a
    const-string v1, "Accept-Encoding"

    const-string v6, "gzip"

    invoke-interface {v3, v1, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v1, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-interface {v3, v1, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_78} :catch_b5

    move v1, v0

    .line 774
    :cond_79
    add-int/lit8 v1, v1, 0x1

    .line 776
    :try_start_7b
    invoke-interface {v5, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 777
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 778
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 780
    const-string v7, "openSDK_LOG.ReportManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-->httpRequest, statusCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_ee

    .line 782
    const-string v6, "openSDK_LOG.ReportManager"

    const-string v7, "-->ReportCenter httpRequest : HttpStatuscode != 200"

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7b .. :try_end_aa} :catch_f7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7b .. :try_end_aa} :catch_102
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_aa} :catch_10b

    .line 798
    :goto_aa
    if-ne v0, v2, :cond_114

    .line 799
    :try_start_ac
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->ReportCenter httpRequest Thread request success"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b3} :catch_b5

    goto/16 :goto_d

    .line 803
    :catch_b5
    move-exception v0

    .line 804
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->httpRequest, exception in serial executor."

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_bf
    move v4, v1

    .line 743
    goto/16 :goto_16

    .line 759
    :cond_c2
    :try_start_c2
    iget-object v1, p0, Lcom/tencent/open/b/g$6;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "POST"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 760
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v6, p0, Lcom/tencent/open/b/g$6;->b:Ljava/lang/String;

    invoke-direct {v1, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 761
    invoke-static {v3}, Lcom/tencent/open/utils/Util;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v3

    .line 762
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v6, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 763
    invoke-virtual {v1, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v3, v1

    .line 765
    goto :goto_6a

    .line 766
    :cond_e5
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->httpRequest unkonw request method return."

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_ec} :catch_b5

    goto/16 :goto_d

    .line 785
    :cond_ee
    :try_start_ee
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v6, "-->ReportCenter httpRequest Thread success"

    invoke-static {v0, v6}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_ee .. :try_end_f5} :catch_123
    .catch Ljava/net/SocketTimeoutException; {:try_start_ee .. :try_end_f5} :catch_120
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f5} :catch_11d

    move v0, v2

    goto :goto_aa

    .line 788
    :catch_f7
    move-exception v6

    .line 789
    :goto_f8
    :try_start_f8
    const-string v6, "openSDK_LOG.ReportManager"

    const-string v7, "-->ReportCenter httpRequest ConnectTimeoutException"

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_ff
    if-lt v1, v4, :cond_79

    goto :goto_aa

    .line 790
    :catch_102
    move-exception v6

    .line 791
    :goto_103
    const-string v6, "openSDK_LOG.ReportManager"

    const-string v7, "-->ReportCenter httpRequest SocketTimeoutException"

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff

    .line 792
    :catch_10b
    move-exception v1

    .line 793
    :goto_10c
    const-string v1, "openSDK_LOG.ReportManager"

    const-string v3, "-->ReportCenter httpRequest Exception"

    invoke-static {v1, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_aa

    .line 801
    :cond_114
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->ReportCenter httpRequest Thread request failed"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_11b} :catch_b5

    goto/16 :goto_d

    .line 792
    :catch_11d
    move-exception v0

    move v0, v2

    goto :goto_10c

    .line 790
    :catch_120
    move-exception v0

    move v0, v2

    goto :goto_103

    .line 788
    :catch_123
    move-exception v0

    move v0, v2

    goto :goto_f8

    :cond_126
    move-object v3, v1

    goto/16 :goto_48
.end method
