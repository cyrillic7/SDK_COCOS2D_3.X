.class public Lcom/tencent/tmdownloader/internal/a/g;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field protected a:Z

.field b:Lorg/apache/http/client/HttpClient;

.field c:Lorg/apache/http/client/methods/HttpGet;

.field protected d:Lcom/tencent/tmdownloader/internal/a/d;

.field protected final e:[B

.field f:Lcom/tencent/tmdownloader/internal/b/b;

.field protected final g:I


# direct methods
.method public constructor <init>(Lcom/tencent/tmdownloader/internal/a/d;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->a:Z

    .line 45
    iput-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    .line 46
    iput-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    .line 48
    iput-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    .line 49
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->e:[B

    .line 51
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getMemUUID()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->g:I

    .line 55
    iput-object p1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    .line 56
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 327
    if-eqz p1, :cond_5

    .line 329
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 331
    :cond_5
    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 660
    if-nez p1, :cond_4

    .line 701
    :cond_3
    :goto_3
    return-void

    .line 665
    :cond_4
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 666
    const/4 v0, 0x0

    .line 668
    const-string v1, "Content-Disposition"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 669
    if-eqz v1, :cond_85

    array-length v2, v1

    if-lez v2, :cond_85

    .line 671
    aget-object v1, v1, v4

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 673
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7c

    const-string v2, "filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 676
    const-string v2, "filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "filename=\""

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 681
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 682
    const-string v1, "_DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header file Name ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_69
    :goto_69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 696
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    goto :goto_3

    .line 687
    :cond_7c
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_69

    .line 691
    :cond_85
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_69
.end method

.method private a(Lorg/apache/http/HttpResponse;Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V
    .registers 9

    .prologue
    .line 335
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 336
    const-string v1, "_DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpResponseCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sparse-switch v0, :sswitch_data_1c6

    .line 429
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP response code error, code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v1

    .line 342
    :sswitch_4e
    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_71

    array-length v1, v0

    if-lez v1, :cond_71

    .line 349
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    const-string v2, "resource/tm.android.unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 350
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    .line 364
    :cond_71
    :goto_71
    invoke-direct {p0, p1, p2}, Lcom/tencent/tmdownloader/internal/a/g;->b(Lorg/apache/http/HttpResponse;Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    .line 432
    :goto_74
    return-void

    .line 354
    :cond_75
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ad

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 357
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v1, 0x2c4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Return contenttype = text "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v0

    .line 360
    :cond_ad
    invoke-direct {p0, p1}, Lcom/tencent/tmdownloader/internal/a/g;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_71

    .line 373
    :sswitch_b1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    const-string v1, "resource/tm.android.unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 374
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    .line 379
    :goto_c9
    invoke-direct {p0, p1, p2}, Lcom/tencent/tmdownloader/internal/a/g;->b(Lorg/apache/http/HttpResponse;Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    goto :goto_74

    .line 377
    :cond_cd
    invoke-direct {p0, p1}, Lcom/tencent/tmdownloader/internal/a/g;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_c9

    .line 387
    :sswitch_d1
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->e:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_e2

    .line 389
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v1, 0x2c5

    const-string v2, "Redirect cnt many times."

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v0

    .line 392
    :cond_e2
    const-string v1, "location"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 393
    if-eqz v1, :cond_15f

    .line 395
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-static {v1}, Lcom/tencent/tmdownloader/internal/a/c;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13a

    .line 398
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-static {v1}, Lcom/tencent/tmdownloader/internal/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 400
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->G:Ljava/lang/String;

    .line 404
    :goto_10e
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->e:I

    goto/16 :goto_74

    .line 402
    :cond_118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v2, v1, Lcom/tencent/tmdownloader/internal/a/d;->G:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->G:Ljava/lang/String;

    goto :goto_10e

    .line 408
    :cond_13a
    new-instance v2, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v3, 0x2bc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Jump url is not valid. httpResponseCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " url: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v2

    .line 416
    :cond_15f
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v2, 0x2be

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location header is null. httpResponseCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v1

    .line 421
    :sswitch_17a
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP response code error, code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v1

    .line 424
    :sswitch_193
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP response code error, code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v1

    .line 426
    :sswitch_1ac
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP response code error, code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v1

    .line 337
    nop

    :sswitch_data_1c6
    .sparse-switch
        0xc8 -> :sswitch_4e
        0xce -> :sswitch_b1
        0x12d -> :sswitch_d1
        0x12e -> :sswitch_d1
        0x12f -> :sswitch_d1
        0x133 -> :sswitch_d1
        0x1a0 -> :sswitch_17a
        0x1f4 -> :sswitch_1ac
        0x1f7 -> :sswitch_193
    .end sparse-switch
.end method

.method private a(Lorg/apache/http/client/methods/HttpGet;)V
    .registers 12

    .prologue
    const-wide/16 v8, 0x1

    .line 613
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->p:Ljava/lang/String;

    .line 616
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->d:I

    if-lez v1, :cond_90

    .line 621
    :cond_26
    :try_start_26
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/f;->a(Ljava/lang/String;)I

    move-result v0

    .line 622
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v2, v1, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    .line 624
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_87

    .line 626
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    int-to-long v0, v0

    add-long/2addr v0, v4

    sub-long/2addr v0, v8

    .line 627
    iget-object v4, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v4, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_4c

    .line 629
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    sub-long/2addr v0, v8

    .line 637
    :cond_4c
    :goto_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    const-string v1, "range"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v1, "_DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set range header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_26 .. :try_end_86} :catch_8b

    .line 653
    :goto_86
    return-void

    .line 634
    :cond_87
    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    goto :goto_4c

    .line 641
    :catch_8b
    move-exception v0

    .line 643
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_86

    .line 649
    :cond_90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v2, v1, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    const-string v1, "range"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v1, "_DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set range header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86
.end method

.method private a(Lorg/apache/http/client/methods/HttpGet;Ljava/util/Map;)V
    .registers 6

    .prologue
    .line 709
    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 710
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 711
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 712
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 713
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 717
    :cond_2e
    return-void
.end method

.method private b(Lorg/apache/http/HttpResponse;Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V
    .registers 19

    .prologue
    .line 436
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_17a

    .line 441
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_10f

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/tencent/tmdownloader/internal/a/d;->a(J)V

    .line 444
    const-string v2, "_DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTPCode 200, totalBytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v4, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :goto_45
    const-string v2, "_DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "first start downloadinfoTotalSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v4, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_63
    :goto_63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-nez v2, :cond_7e

    .line 505
    new-instance v2, Lcom/tencent/tmdownloader/internal/b/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v3, v3, Lcom/tencent/tmdownloader/internal/a/d;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v4, v4, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/tencent/tmdownloader/internal/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 508
    :cond_7e
    const-wide/16 v4, 0x0

    .line 511
    :try_start_80
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 513
    const-string v2, "_DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start write file, fileName: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v6, v6, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/net/SocketException; {:try_start_80 .. :try_end_a2} :catch_4b8
    .catchall {:try_start_80 .. :try_end_a2} :catchall_2e1

    move-wide v10, v4

    .line 514
    :goto_a3
    :try_start_a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->e:[B

    invoke-virtual {v12, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_b6

    .line 516
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->a:Z

    if-eqz v2, :cond_23b

    .line 518
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b6
    .catch Ljava/net/SocketException; {:try_start_a3 .. :try_end_b6} :catch_2d4
    .catchall {:try_start_a3 .. :try_end_b6} :catchall_38f

    .line 565
    :cond_b6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v2, :cond_c8

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v2}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 568
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 571
    :cond_c8
    move-object/from16 v0, p2

    iput-wide v10, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    .line 572
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    .line 573
    if-eqz v2, :cond_48d

    .line 574
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_461

    .line 575
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    .line 576
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_461

    .line 577
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 578
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 579
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 581
    :goto_102
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_494

    .line 582
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_102

    .line 447
    :cond_10f
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xce

    if-ne v2, v3, :cond_152

    .line 449
    const-string v2, "content-range"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmdownloader/internal/a/b;->b(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/tmdownloader/internal/a/d;->a(J)V

    .line 451
    const-string v2, "_DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTPCode 206, totalBytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v4, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_45

    .line 456
    :cond_152
    const-string v2, "_DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statusCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onReceivedResponseData error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_45

    .line 464
    :cond_17a
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xce

    if-ne v2, v3, :cond_63

    .line 468
    :try_start_186
    const-string v2, "content-range"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 469
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmdownloader/internal/a/b;->a(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/b;

    move-result-object v3

    .line 470
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tmdownloader/internal/a/b;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 472
    const-string v6, "_DownloadTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "totalSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  downloadinfoTotalSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v10, v8, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v3}, Lcom/tencent/tmdownloader/internal/a/b;->b()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v10, v3, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    cmp-long v3, v6, v10

    if-eqz v3, :cond_1fb

    .line 476
    new-instance v2, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v3, 0x2c2

    const-string v4, "The received size is not equal with ByteRange."

    invoke-direct {v2, v3, v4}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1de
    .catch Ljava/lang/Throwable; {:try_start_186 .. :try_end_1de} :catch_1de
    .catchall {:try_start_186 .. :try_end_1de} :catchall_1e7

    .line 487
    :catch_1de
    move-exception v2

    .line 489
    :try_start_1df
    new-instance v3, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v4, 0x2c0

    invoke-direct {v3, v4, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/Throwable;)V

    throw v3
    :try_end_1e7
    .catchall {:try_start_1df .. :try_end_1e7} :catchall_1e7

    .line 493
    :catchall_1e7
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v3, :cond_1fa

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v3}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 496
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 493
    :cond_1fa
    throw v2

    .line 479
    :cond_1fb
    :try_start_1fb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v6, v3, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_20f

    .line 481
    new-instance v2, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v3, 0x2c1

    const-string v4, "The total size is not equal with ByteRange."

    invoke-direct {v2, v3, v4}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v2

    .line 484
    :cond_20f
    const-string v3, "_DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response ByteRange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_227
    .catch Ljava/lang/Throwable; {:try_start_1fb .. :try_end_227} :catch_1de
    .catchall {:try_start_1fb .. :try_end_227} :catchall_1e7

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v2, :cond_63

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v2}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 496
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    goto/16 :goto_63

    .line 521
    :cond_23b
    const/4 v2, 0x0

    .line 522
    :try_start_23c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v6, v3, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    int-to-long v14, v5

    add-long/2addr v6, v14

    .line 523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v14, v3, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    cmp-long v3, v6, v14

    if-gtz v3, :cond_3ee

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    cmp-long v2, v6, v2

    if-nez v2, :cond_33c

    const/4 v8, 0x1

    .line 525
    :goto_259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->e:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v6, v6, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/tmdownloader/internal/b/b;->a([BIIJZ)Z

    move-result v2

    if-nez v2, :cond_3e2

    .line 528
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/b;->e()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v6, v3, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-static {v2, v6, v7}, Lcom/tencent/tmdownloader/internal/a/c;->a(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_392

    .line 529
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/b;->g()Z

    move-result v2

    if-eqz v2, :cond_33f

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write file failed, fileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v3, v3, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " receivedSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v6, v3, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " readedSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v3, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 532
    const-string v3, "_DownloadTask"

    invoke-static {v3, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v3, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v4, 0x2bf

    invoke-direct {v3, v4, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2d4
    .catch Ljava/net/SocketException; {:try_start_23c .. :try_end_2d4} :catch_2d4
    .catchall {:try_start_23c .. :try_end_2d4} :catchall_38f

    .line 558
    :catch_2d4
    move-exception v2

    move-wide v4, v10

    .line 560
    :goto_2d6
    :try_start_2d6
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    .line 561
    new-instance v3, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v6, 0x25d

    invoke-direct {v3, v6, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/Throwable;)V

    throw v3
    :try_end_2e1
    .catchall {:try_start_2d6 .. :try_end_2e1} :catchall_2e1

    .line 565
    :catchall_2e1
    move-exception v2

    move-wide v10, v4

    :goto_2e3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v3, :cond_2f5

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v3}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 568
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 571
    :cond_2f5
    move-object/from16 v0, p2

    iput-wide v10, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    .line 572
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    .line 573
    if-eqz v3, :cond_462

    .line 574
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_456

    .line 575
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    .line 576
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_456

    .line 577
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 578
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 579
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 581
    :goto_32f
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_469

    .line 582
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_32f

    .line 524
    :cond_33c
    const/4 v8, 0x0

    goto/16 :goto_259

    .line 535
    :cond_33f
    :try_start_33f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write file failed, no sdCard! fileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v3, v3, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " receivedSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v6, v3, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " readedSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v3, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    const-string v3, "_DownloadTask"

    invoke-static {v3, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    new-instance v3, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v4, 0x2c7

    invoke-direct {v3, v4, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v3

    .line 565
    :catchall_38f
    move-exception v2

    goto/16 :goto_2e3

    .line 541
    :cond_392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write file failed, no enough space! fileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v3, v3, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " receivedSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v6, v3, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " readedSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v3, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 543
    const-string v3, "_DownloadTask"

    invoke-static {v3, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v3, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v4, 0x2c6

    invoke-direct {v3, v4, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v3

    .line 548
    :cond_3e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lcom/tencent/tmdownloader/internal/a/d;->b(J)V

    .line 549
    int-to-long v2, v5

    add-long/2addr v10, v2

    goto/16 :goto_a3

    .line 551
    :cond_3ee
    const-string v3, "write file size too long."

    .line 552
    const-string v4, "_DownloadTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write file size too long.\r\nreadedLen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "receivedSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v6, v6, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "totalSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v6, v6, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isTheEndData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v2, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v4, 0x2bf

    invoke-direct {v2, v4, v3}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_44c
    .catch Ljava/net/SocketException; {:try_start_33f .. :try_end_44c} :catch_2d4
    .catchall {:try_start_33f .. :try_end_44c} :catchall_38f

    .line 591
    :cond_44c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/tencent/tmdownloader/internal/a/d;->H:Ljava/lang/String;

    .line 565
    :cond_456
    :goto_456
    throw v2

    .line 591
    :cond_457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/tmdownloader/internal/a/d;->H:Ljava/lang/String;

    .line 599
    :cond_461
    :goto_461
    return-void

    .line 595
    :cond_462
    const-string v3, "UNKOWN"

    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    goto :goto_456

    .line 584
    :cond_469
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 585
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 586
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 587
    const-string v5, ""

    .line 588
    :goto_483
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_44c

    .line 589
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_483

    .line 595
    :cond_48d
    const-string v2, "UNKOWN"

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    goto :goto_461

    .line 584
    :cond_494
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 585
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 586
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 587
    const-string v4, ""

    .line 588
    :goto_4ae
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_457

    .line 589
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4ae

    .line 558
    :catch_4b8
    move-exception v2

    goto/16 :goto_2d6
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->g:I

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 14

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 86
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iput-boolean v4, v0, Lcom/tencent/tmdownloader/internal/a/d;->g:Z

    .line 87
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/internal/a/d;->a(I)V

    .line 88
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->x:J

    cmp-long v0, v10, v0

    if-nez v0, :cond_1f

    .line 89
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/tencent/tmdownloader/internal/a/d;->x:J

    :cond_1f
    move-object v6, v5

    move-object v1, v5

    move v2, v4

    .line 97
    :goto_22
    if-eqz v2, :cond_48

    .line 101
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(B)Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;

    move-result-object v6

    .line 102
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->f:Ljava/lang/String;

    iput-object v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskId:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/a/g;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->downUrl:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    iput-object v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->finalDownloadUrl:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->G:Ljava/lang/String;

    iput-object v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->jumpUrl:Ljava/lang/String;

    .line 108
    iget-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->a:Z

    if-eqz v0, :cond_a6

    .line 293
    :cond_48
    if-eqz v6, :cond_65

    .line 295
    const-string v0, "_DownloadTask"

    const-string v2, "lastChunkLogData, addDownloadNewChunkLogData "

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 297
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 299
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    .line 303
    :cond_65
    iget-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->a:Z

    if-nez v0, :cond_77

    .line 305
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_436

    .line 307
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/internal/a/d;->a(I)V

    .line 316
    :cond_77
    :goto_77
    const-string v0, "_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download finished, finalstatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iput-boolean v3, v0, Lcom/tencent/tmdownloader/internal/a/d;->g:Z

    .line 319
    return-void

    .line 115
    :cond_a6
    :try_start_a6
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/k;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    .line 117
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/k;->a(Lorg/apache/http/client/HttpClient;)V

    .line 119
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    .line 120
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    new-instance v7, Ljava/net/URI;

    iget-object v8, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v8, v8, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    iget-object v7, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v7, v7, Lcom/tencent/tmdownloader/internal/a/d;->r:Ljava/util/HashMap;

    invoke-direct {p0, v0, v7}, Lcom/tencent/tmdownloader/internal/a/g;->a(Lorg/apache/http/client/methods/HttpGet;Ljava/util/Map;)V

    .line 126
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, v0}, Lcom/tencent/tmdownloader/internal/a/g;->a(Lorg/apache/http/client/methods/HttpGet;)V

    .line 129
    const-string v0, "_DownloadTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start httpGet "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    iget-object v7, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v0, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 132
    if-nez v0, :cond_18a

    .line 134
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v7, 0x2bd

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "response is null! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_121
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a6 .. :try_end_121} :catch_121
    .catch Ljava/net/SocketTimeoutException; {:try_start_a6 .. :try_end_121} :catch_1f8
    .catch Ljava/net/UnknownHostException; {:try_start_a6 .. :try_end_121} :catch_272
    .catch Ljava/lang/InterruptedException; {:try_start_a6 .. :try_end_121} :catch_2ad
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_121} :catch_2e8
    .catch Lcom/tencent/tmdownloader/internal/a/m; {:try_start_a6 .. :try_end_121} :catch_323
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_121} :catch_3ad
    .catchall {:try_start_a6 .. :try_end_121} :catchall_3e8

    .line 149
    :catch_121
    move-exception v0

    .line 151
    :try_start_122
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 152
    iget-object v7, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v7}, Lcom/tencent/tmdownloader/internal/a/d;->b()Z
    :try_end_12a
    .catchall {:try_start_122 .. :try_end_12a} :catchall_3e8

    move-result v7

    if-eqz v7, :cond_1ee

    .line 155
    :try_start_12d
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->d:I
    :try_end_135
    .catchall {:try_start_12d .. :try_end_135} :catchall_441

    .line 158
    const-wide/16 v8, 0x1388

    :try_start_137
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13a
    .catch Ljava/lang/InterruptedException; {:try_start_137 .. :try_end_13a} :catch_1e4
    .catchall {:try_start_137 .. :try_end_13a} :catchall_441

    move v2, v4

    .line 257
    :goto_13b
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_14e

    .line 259
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v0

    if-nez v0, :cond_14c

    .line 261
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 263
    :cond_14c
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    .line 266
    :cond_14e
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_15d

    .line 268
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 269
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    .line 271
    :cond_15d
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_168

    .line 273
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 274
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 280
    :cond_168
    if-ne v2, v4, :cond_444

    if-eqz v6, :cond_444

    iget-wide v8, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_444

    .line 282
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 283
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 284
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    :goto_186
    move-object v0, v5

    :goto_187
    move-object v6, v0

    .line 285
    goto/16 :goto_22

    .line 138
    :cond_18a
    :try_start_18a
    invoke-direct {p0, v0, v6}, Lcom/tencent/tmdownloader/internal/a/g;->a(Lorg/apache/http/HttpResponse;Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    .line 140
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/d;->a()Z
    :try_end_192
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_18a .. :try_end_192} :catch_121
    .catch Ljava/net/SocketTimeoutException; {:try_start_18a .. :try_end_192} :catch_1f8
    .catch Ljava/net/UnknownHostException; {:try_start_18a .. :try_end_192} :catch_272
    .catch Ljava/lang/InterruptedException; {:try_start_18a .. :try_end_192} :catch_2ad
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_192} :catch_2e8
    .catch Lcom/tencent/tmdownloader/internal/a/m; {:try_start_18a .. :try_end_192} :catch_323
    .catch Ljava/lang/Throwable; {:try_start_18a .. :try_end_192} :catch_3ad
    .catchall {:try_start_18a .. :try_end_192} :catchall_3e8

    move-result v0

    if-nez v0, :cond_1e2

    move v2, v4

    .line 257
    :goto_196
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_1a9

    .line 259
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v0

    if-nez v0, :cond_1a7

    .line 261
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 263
    :cond_1a7
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    .line 266
    :cond_1a9
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_1b8

    .line 268
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 269
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    .line 271
    :cond_1b8
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_1c3

    .line 273
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 274
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 280
    :cond_1c3
    if-ne v2, v4, :cond_444

    if-eqz v6, :cond_444

    iget-wide v8, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_444

    .line 282
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 283
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 284
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    goto :goto_186

    :cond_1e2
    move v2, v3

    .line 146
    goto :goto_196

    .line 160
    :catch_1e4
    move-exception v1

    .line 162
    :try_start_1e5
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v2, 0x258

    iput v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I
    :try_end_1eb
    .catchall {:try_start_1e5 .. :try_end_1eb} :catchall_441

    move v2, v3

    .line 165
    goto/16 :goto_13b

    .line 169
    :cond_1ee
    :try_start_1ee
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v7, 0x259

    iput v7, v1, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    move-object v1, v0

    move v2, v3

    .line 171
    goto/16 :goto_13b

    .line 174
    :catch_1f8
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 177
    iget-object v7, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v7}, Lcom/tencent/tmdownloader/internal/a/d;->b()Z
    :try_end_201
    .catchall {:try_start_1ee .. :try_end_201} :catchall_3e8

    move-result v7

    if-eqz v7, :cond_269

    .line 180
    :try_start_204
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v7, v2, Lcom/tencent/tmdownloader/internal/a/d;->d:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/tencent/tmdownloader/internal/a/d;->d:I
    :try_end_20c
    .catchall {:try_start_204 .. :try_end_20c} :catchall_441

    .line 183
    const-wide/16 v8, 0x1388

    :try_start_20e
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_211
    .catch Ljava/lang/InterruptedException; {:try_start_20e .. :try_end_211} :catch_25f
    .catchall {:try_start_20e .. :try_end_211} :catchall_441

    move v2, v4

    .line 257
    :goto_212
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_225

    .line 259
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v0

    if-nez v0, :cond_223

    .line 261
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 263
    :cond_223
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    .line 266
    :cond_225
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_234

    .line 268
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 269
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    .line 271
    :cond_234
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_23f

    .line 273
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 274
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 280
    :cond_23f
    if-ne v2, v4, :cond_444

    if-eqz v6, :cond_444

    iget-wide v8, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_444

    .line 282
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 283
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 284
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    goto/16 :goto_186

    .line 185
    :catch_25f
    move-exception v1

    .line 187
    :try_start_260
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v2, 0x258

    iput v2, v1, Lcom/tencent/tmdownloader/internal/a/d;->o:I
    :try_end_266
    .catchall {:try_start_260 .. :try_end_266} :catchall_441

    move-object v1, v0

    move v2, v3

    .line 190
    goto :goto_212

    .line 194
    :cond_269
    :try_start_269
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v7, 0x25a

    iput v7, v1, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    move-object v1, v0

    move v2, v3

    .line 196
    goto :goto_212

    .line 199
    :catch_272
    move-exception v1

    .line 201
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 203
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v7, 0x25b

    iput v7, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I
    :try_end_27c
    .catchall {:try_start_269 .. :try_end_27c} :catchall_3e8

    .line 257
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_28f

    .line 259
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v0

    if-nez v0, :cond_28d

    .line 261
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 263
    :cond_28d
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    .line 266
    :cond_28f
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_29e

    .line 268
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 269
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    .line 271
    :cond_29e
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_2a9

    .line 273
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 274
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    :cond_2a9
    move-object v0, v6

    move v2, v3

    .line 288
    goto/16 :goto_187

    .line 207
    :catch_2ad
    move-exception v1

    .line 209
    :try_start_2ae
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 210
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v7, 0x258

    iput v7, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I
    :try_end_2b7
    .catchall {:try_start_2ae .. :try_end_2b7} :catchall_3e8

    .line 257
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_2ca

    .line 259
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v0

    if-nez v0, :cond_2c8

    .line 261
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 263
    :cond_2c8
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    .line 266
    :cond_2ca
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_2d9

    .line 268
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 269
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    .line 271
    :cond_2d9
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_2e4

    .line 273
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 274
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    :cond_2e4
    move-object v0, v6

    move v2, v3

    .line 288
    goto/16 :goto_187

    .line 215
    :catch_2e8
    move-exception v1

    .line 217
    :try_start_2e9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 218
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v7, 0x25e

    iput v7, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I
    :try_end_2f2
    .catchall {:try_start_2e9 .. :try_end_2f2} :catchall_3e8

    .line 257
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_305

    .line 259
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v0

    if-nez v0, :cond_303

    .line 261
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 263
    :cond_303
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    .line 266
    :cond_305
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_314

    .line 268
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 269
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    .line 271
    :cond_314
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_31f

    .line 273
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 274
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    :cond_31f
    move-object v0, v6

    move v2, v3

    .line 288
    goto/16 :goto_187

    .line 222
    :catch_323
    move-exception v1

    .line 224
    :try_start_324
    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/a/m;->printStackTrace()V

    .line 225
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v7, v1, Lcom/tencent/tmdownloader/internal/a/m;->a:I

    iput v7, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    .line 227
    const/16 v0, 0x2c0

    iget v7, v1, Lcom/tencent/tmdownloader/internal/a/m;->a:I

    if-ne v0, v7, :cond_3ab

    .line 230
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v8, v9}, Lcom/tencent/tmdownloader/internal/a/d;->a(J)V

    .line 231
    new-instance v0, Lcom/tencent/tmdownloader/internal/b/b;

    iget-object v7, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v7, v7, Lcom/tencent/tmdownloader/internal/a/d;->m:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v8, v8, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Lcom/tencent/tmdownloader/internal/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->a()V

    .line 234
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/d;->b()Z
    :try_end_34f
    .catchall {:try_start_324 .. :try_end_34f} :catchall_3e8

    move-result v0

    if-eqz v0, :cond_3a9

    .line 237
    :try_start_352
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->d:I
    :try_end_35a
    .catchall {:try_start_352 .. :try_end_35a} :catchall_441

    move v0, v4

    :goto_35b
    move v2, v0

    .line 257
    :goto_35c
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_36f

    .line 259
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v0

    if-nez v0, :cond_36d

    .line 261
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 263
    :cond_36d
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    .line 266
    :cond_36f
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_37e

    .line 268
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 269
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    .line 271
    :cond_37e
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_389

    .line 273
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 274
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 280
    :cond_389
    if-ne v2, v4, :cond_444

    if-eqz v6, :cond_444

    iget-wide v8, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_444

    .line 282
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 283
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 284
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    goto/16 :goto_186

    :cond_3a9
    move v0, v3

    .line 239
    goto :goto_35b

    :cond_3ab
    move v2, v3

    .line 242
    goto :goto_35c

    .line 248
    :catch_3ad
    move-exception v1

    .line 250
    :try_start_3ae
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v7, 0x25c

    iput v7, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I
    :try_end_3b7
    .catchall {:try_start_3ae .. :try_end_3b7} :catchall_3e8

    .line 257
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_3ca

    .line 259
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v0

    if-nez v0, :cond_3c8

    .line 261
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 263
    :cond_3c8
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    .line 266
    :cond_3ca
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_3d9

    .line 268
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 269
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    .line 271
    :cond_3d9
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_3e4

    .line 273
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 274
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    :cond_3e4
    move-object v0, v6

    move v2, v3

    .line 288
    goto/16 :goto_187

    .line 257
    :catchall_3e8
    move-exception v0

    move v1, v2

    :goto_3ea
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v2, :cond_3fd

    .line 259
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v2

    if-nez v2, :cond_3fb

    .line 261
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 263
    :cond_3fb
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    .line 266
    :cond_3fd
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v2, :cond_40c

    .line 268
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 269
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Lorg/apache/http/client/HttpClient;

    .line 271
    :cond_40c
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v2, :cond_417

    .line 273
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v2}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 274
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 280
    :cond_417
    if-ne v1, v4, :cond_435

    if-eqz v6, :cond_435

    iget-wide v2, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    cmp-long v1, v2, v10

    if-lez v1, :cond_435

    .line 282
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v1, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 283
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v1, v1

    iput-byte v1, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 284
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    .line 257
    :cond_435
    throw v0

    .line 311
    :cond_436
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/tencent/tmdownloader/internal/a/d;->a(I)V

    .line 312
    invoke-direct {p0, v1}, Lcom/tencent/tmdownloader/internal/a/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_77

    .line 257
    :catchall_441
    move-exception v0

    move v1, v4

    goto :goto_3ea

    :cond_444
    move-object v0, v6

    goto/16 :goto_187
.end method

.method public b()V
    .registers 4

    .prologue
    .line 65
    const-string v0, "_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->a:Z

    .line 68
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v0

    if-nez v0, :cond_30

    .line 70
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 72
    :cond_30
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->n:I

    return v0
.end method
