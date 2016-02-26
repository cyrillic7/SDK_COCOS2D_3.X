.class final Lcom/alipay/sdk/util/FileFetch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/util/FileFetch$FileAccess;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/sdk/util/FileDownloader;

.field private d:Z

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/util/FileDownloader;)V
    .registers 5

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    .line 35
    iput-object p1, p0, Lcom/alipay/sdk/util/FileFetch;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/alipay/sdk/util/FileFetch;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/alipay/sdk/util/FileFetch;->c:Lcom/alipay/sdk/util/FileDownloader;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/util/FileFetch;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/sdk/util/FileFetch;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .registers 3

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    return-wide v0
.end method

.method public final a(J)V
    .registers 4

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    .line 129
    return-void
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/alipay/sdk/util/FileFetch;->f:J

    return-wide v0
.end method

.method public final b(J)V
    .registers 4

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/alipay/sdk/util/FileFetch;->f:J

    .line 137
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    return v0
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    .line 145
    return-void
.end method

.method public final run()V
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 41
    iget-object v0, p0, Lcom/alipay/sdk/util/FileFetch;->c:Lcom/alipay/sdk/util/FileDownloader;

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileDownloader;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 42
    iget-wide v0, p0, Lcom/alipay/sdk/util/FileFetch;->f:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_1a

    iget-wide v0, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    iget-wide v6, p0, Lcom/alipay/sdk/util/FileFetch;->f:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1d

    .line 43
    :cond_1a
    iput-boolean v4, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    .line 121
    :goto_1c
    return-void

    .line 47
    :cond_1d
    new-instance v5, Lcom/alipay/sdk/util/FileFetch$FileAccess;

    invoke-direct {v5, p0}, Lcom/alipay/sdk/util/FileFetch$FileAccess;-><init>(Lcom/alipay/sdk/util/FileFetch;)V

    .line 49
    :cond_22
    :goto_22
    iget-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    if-nez v0, :cond_78

    .line 50
    const/4 v3, 0x0

    .line 54
    :try_start_27
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/alipay/sdk/util/FileFetch;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 57
    iget-object v6, p0, Lcom/alipay/sdk/util/FileFetch;->c:Lcom/alipay/sdk/util/FileDownloader;

    invoke-virtual {v6}, Lcom/alipay/sdk/util/FileDownloader;->a()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/alipay/sdk/util/FileFetch;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    const-string v7, "Range"

    invoke-virtual {v0, v7, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_5d
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_68} :catch_85
    .catch Ljava/net/SocketTimeoutException; {:try_start_27 .. :try_end_68} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_68} :catch_ff
    .catchall {:try_start_27 .. :try_end_68} :catchall_10d

    move-result v1

    .line 66
    packed-switch v1, :pswitch_data_11e

    .line 78
    const/4 v0, 0x1

    :try_start_6d
    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    .line 81
    :goto_6f
    iget-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_71} :catch_11b
    .catch Ljava/net/SocketTimeoutException; {:try_start_6d .. :try_end_71} :catch_119
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_71} :catch_ff
    .catchall {:try_start_6d .. :try_end_71} :catchall_10d

    if-eqz v0, :cond_8d

    .line 113
    if-eqz v3, :cond_78

    .line 115
    :try_start_75
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_114

    .line 120
    :cond_78
    :goto_78
    invoke-virtual {v5}, Lcom/alipay/sdk/util/FileFetch$FileAccess;->a()V

    goto :goto_1c

    .line 75
    :pswitch_7c
    :try_start_7c
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_83} :catch_11b
    .catch Ljava/net/SocketTimeoutException; {:try_start_7c .. :try_end_83} :catch_119
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_83} :catch_ff
    .catchall {:try_start_7c .. :try_end_83} :catchall_10d

    move-result-object v3

    goto :goto_6f

    .line 84
    :catch_85
    move-exception v0

    move v1, v2

    :goto_87
    :try_start_87
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z
    :try_end_8d
    .catch Ljava/net/SocketTimeoutException; {:try_start_87 .. :try_end_8d} :catch_119
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8d} :catch_f1
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8d} :catch_ff
    .catchall {:try_start_87 .. :try_end_8d} :catchall_10d

    .line 88
    :cond_8d
    if-nez v3, :cond_97

    .line 113
    if-eqz v3, :cond_22

    .line 115
    :try_start_91
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_22

    .line 117
    :catch_95
    move-exception v0

    goto :goto_22

    .line 92
    :cond_97
    const/16 v0, 0x400

    :try_start_99
    new-array v6, v0, [B

    .line 94
    :cond_9b
    const/4 v0, 0x0

    array-length v7, v6

    invoke-virtual {v3, v6, v0, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 95
    const/4 v0, -0x1

    if-eq v7, v0, :cond_b3

    .line 96
    iget-wide v8, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    invoke-virtual {v5, v6, v7}, Lcom/alipay/sdk/util/FileFetch$FileAccess;->a([BI)I

    move-result v0

    int-to-long v10, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    .line 97
    iget-object v0, p0, Lcom/alipay/sdk/util/FileFetch;->c:Lcom/alipay/sdk/util/FileDownloader;

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileDownloader;->d()V

    .line 99
    :cond_b3
    iget-object v0, p0, Lcom/alipay/sdk/util/FileFetch;->c:Lcom/alipay/sdk/util/FileDownloader;

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileDownloader;->a()Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-wide v8, p0, Lcom/alipay/sdk/util/FileFetch;->e:J

    iget-wide v10, p0, Lcom/alipay/sdk/util/FileFetch;->f:J

    cmp-long v0, v8, v10

    if-ltz v0, :cond_dc

    move v0, v2

    .line 101
    :goto_c4
    iget-boolean v8, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z

    if-nez v8, :cond_de

    if-eqz v0, :cond_de

    move v0, v4

    .line 102
    :goto_cb
    if-ltz v7, :cond_cf

    if-nez v0, :cond_9b

    .line 103
    :cond_cf
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z
    :try_end_d2
    .catch Ljava/net/SocketTimeoutException; {:try_start_99 .. :try_end_d2} :catch_119
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_d2} :catch_f1
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_d2} :catch_ff
    .catchall {:try_start_99 .. :try_end_d2} :catchall_10d

    .line 113
    if-eqz v3, :cond_22

    .line 115
    :try_start_d4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d7} :catch_d9

    goto/16 :goto_22

    .line 117
    :catch_d9
    move-exception v0

    goto/16 :goto_22

    :cond_dc
    move v0, v4

    .line 99
    goto :goto_c4

    :cond_de
    move v0, v2

    .line 101
    goto :goto_cb

    .line 105
    :catch_e0
    move-exception v0

    move v1, v2

    :goto_e2
    if-nez v1, :cond_e7

    .line 106
    const/4 v0, 0x1

    :try_start_e5
    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z
    :try_end_e7
    .catchall {:try_start_e5 .. :try_end_e7} :catchall_10d

    .line 113
    :cond_e7
    if-eqz v3, :cond_22

    .line 115
    :try_start_e9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_ee

    goto/16 :goto_22

    .line 117
    :catch_ee
    move-exception v0

    goto/16 :goto_22

    .line 109
    :catch_f1
    move-exception v0

    const/4 v0, 0x1

    :try_start_f3
    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z
    :try_end_f5
    .catchall {:try_start_f3 .. :try_end_f5} :catchall_10d

    .line 113
    if-eqz v3, :cond_22

    .line 115
    :try_start_f7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fa} :catch_fc

    goto/16 :goto_22

    .line 117
    :catch_fc
    move-exception v0

    goto/16 :goto_22

    .line 111
    :catch_ff
    move-exception v0

    const/4 v0, 0x1

    :try_start_101
    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileFetch;->d:Z
    :try_end_103
    .catchall {:try_start_101 .. :try_end_103} :catchall_10d

    .line 113
    if-eqz v3, :cond_22

    .line 115
    :try_start_105
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_108} :catch_10a

    goto/16 :goto_22

    .line 117
    :catch_10a
    move-exception v0

    goto/16 :goto_22

    .line 113
    :catchall_10d
    move-exception v0

    if-eqz v3, :cond_113

    .line 115
    :try_start_110
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_117

    .line 117
    :cond_113
    :goto_113
    throw v0

    :catch_114
    move-exception v0

    goto/16 :goto_78

    :catch_117
    move-exception v1

    goto :goto_113

    .line 105
    :catch_119
    move-exception v0

    goto :goto_e2

    .line 84
    :catch_11b
    move-exception v0

    goto/16 :goto_87

    .line 66
    :pswitch_data_11e
    .packed-switch 0xc8
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
    .end packed-switch
.end method
