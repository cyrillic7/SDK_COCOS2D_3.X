.class public Lcom/duoku/platform/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/duoku/platform/util/k;

.field private b:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;

.field private j:I

.field private k:Lorg/apache/http/client/methods/HttpGet;

.field private l:Z

.field private m:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Lcom/duoku/platform/g/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/g/a;->a:Lcom/duoku/platform/util/k;

    .line 43
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/duoku/platform/g/a;->b:Ljava/util/concurrent/FutureTask;

    .line 47
    iput-boolean v1, p0, Lcom/duoku/platform/g/a;->d:Z

    .line 49
    const v0, 0xea60

    iput v0, p0, Lcom/duoku/platform/g/a;->f:I

    .line 51
    iput-boolean v1, p0, Lcom/duoku/platform/g/a;->g:Z

    .line 57
    iput-object v2, p0, Lcom/duoku/platform/g/a;->k:Lorg/apache/http/client/methods/HttpGet;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/g/a;->l:Z

    .line 60
    iput v1, p0, Lcom/duoku/platform/g/a;->m:I

    .line 39
    return-void
.end method

.method private a(JJ)V
    .registers 8

    .prologue
    .line 491
    new-instance v0, Lcom/duoku/platform/g/h;

    invoke-direct {v0}, Lcom/duoku/platform/g/h;-><init>()V

    .line 492
    sget-object v1, Lcom/duoku/platform/g/h$a;->c:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/g/h$a;)V

    .line 493
    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/g/h;->b(J)V

    .line 494
    invoke-virtual {v0, p3, p4}, Lcom/duoku/platform/g/h;->a(J)V

    .line 495
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->b(I)V

    .line 498
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 499
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 501
    invoke-virtual {p0, v1}, Lcom/duoku/platform/g/a;->a(Landroid/os/Message;)V

    .line 502
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 507
    new-instance v0, Lcom/duoku/platform/g/h;

    invoke-direct {v0}, Lcom/duoku/platform/g/h;-><init>()V

    .line 508
    iget-boolean v1, p0, Lcom/duoku/platform/g/a;->g:Z

    if-eqz v1, :cond_23

    .line 510
    sget-object v1, Lcom/duoku/platform/g/h$a;->e:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/g/h$a;)V

    .line 521
    :goto_e
    invoke-virtual {v0, p1}, Lcom/duoku/platform/g/h;->a(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->b(I)V

    .line 525
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 526
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 528
    invoke-virtual {p0, v1}, Lcom/duoku/platform/g/a;->a(Landroid/os/Message;)V

    .line 529
    return-void

    .line 518
    :cond_23
    sget-object v1, Lcom/duoku/platform/g/h$a;->b:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/g/h$a;)V

    .line 519
    invoke-virtual {v0, p2}, Lcom/duoku/platform/g/h;->a(I)V

    goto :goto_e
.end method

.method private a([B)V
    .registers 7

    .prologue
    .line 533
    new-instance v1, Lcom/duoku/platform/g/h;

    invoke-direct {v1}, Lcom/duoku/platform/g/h;-><init>()V

    .line 534
    iget-boolean v0, p0, Lcom/duoku/platform/g/a;->g:Z

    if-eqz v0, :cond_20

    .line 536
    sget-object v0, Lcom/duoku/platform/g/h$a;->d:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/g/h$a;)V

    .line 597
    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->b(I)V

    .line 600
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 601
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 603
    invoke-virtual {p0, v0}, Lcom/duoku/platform/g/a;->a(Landroid/os/Message;)V

    .line 604
    return-void

    .line 541
    :cond_20
    sget-object v0, Lcom/duoku/platform/g/h$a;->a:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/g/h$a;)V

    .line 569
    const-string v0, ""

    .line 572
    :try_start_27
    new-instance v0, Lcom/duoku/platform/util/a;

    invoke-direct {v0}, Lcom/duoku/platform/util/a;-><init>()V

    .line 573
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/duoku/platform/util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    iget-object v2, p0, Lcom/duoku/platform/g/a;->a:Lcom/duoku/platform/util/k;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response data is"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 575
    iget v2, p0, Lcom/duoku/platform/g/a;->j:I

    invoke-static {v2, v0}, Lcom/duoku/platform/f/b;->a(ILjava/lang/String;)Lcom/duoku/platform/h/a;

    move-result-object v0

    .line 576
    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/h/a;)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_54} :catch_55
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_54} :catch_64

    goto :goto_e

    .line 579
    :catch_55
    move-exception v0

    .line 582
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 583
    const/16 v0, 0x3f9

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(I)V

    .line 584
    const-string v0, "parse json error"

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(Ljava/lang/String;)V

    goto :goto_e

    .line 586
    :catch_64
    move-exception v0

    .line 589
    const/16 v0, 0x3e8

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(I)V

    .line 590
    const-string v0, "receive data error"

    invoke-virtual {v1, v0}, Lcom/duoku/platform/g/h;->a(Ljava/lang/String;)V

    goto :goto_e
.end method

.method private b()Ljava/io/OutputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    .line 217
    iget-boolean v0, p0, Lcom/duoku/platform/g/a;->g:Z

    if-eqz v0, :cond_56

    .line 220
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 223
    iget-boolean v0, p0, Lcom/duoku/platform/g/a;->l:Z

    if-eqz v0, :cond_3b

    .line 225
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 236
    :goto_3a
    return-object v0

    .line 229
    :cond_3b
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_3a

    .line 234
    :cond_56
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_3a
.end method

.method private c()V
    .registers 17

    .prologue
    const/4 v14, -0x1

    const/4 v4, 0x0

    .line 242
    invoke-static {}, Lcom/duoku/platform/g/c;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 254
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    if-eqz v3, :cond_10a

    .line 256
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/duoku/platform/g/a;->a(Z)V

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/duoku/platform/g/a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/duoku/platform/g/c;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v3

    .line 258
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/duoku/platform/g/a;->k:Lorg/apache/http/client/methods/HttpGet;

    .line 259
    const-string v5, "User-Agent"

    const-string v6, "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/duoku/platform/g/a;->l:Z

    if-eqz v5, :cond_60

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/duoku/platform/util/h;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 263
    const-string v5, "RANGE"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bytes="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_60} :catch_2ef
    .catchall {:try_start_6 .. :try_end_60} :catchall_2e2

    .line 267
    :cond_60
    :try_start_60
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_e1
    .catchall {:try_start_60 .. :try_end_63} :catchall_2e2

    move-result-object v2

    .line 340
    :goto_64
    :try_start_64
    invoke-direct/range {p0 .. p0}, Lcom/duoku/platform/g/a;->b()Ljava/io/OutputStream;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_2ef
    .catchall {:try_start_64 .. :try_end_67} :catchall_2e2

    move-result-object v3

    .line 342
    :try_start_68
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 343
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_78

    const/16 v6, 0xce

    if-ne v5, v6, :cond_24c

    .line 346
    :cond_78
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    .line 347
    const-wide/16 v6, 0x0

    .line 348
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_89} :catch_2f3
    .catchall {:try_start_68 .. :try_end_89} :catchall_2e6

    move-result-object v5

    .line 349
    const/16 v2, 0x2800

    :try_start_8c
    new-array v2, v2, [B

    .line 351
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/duoku/platform/g/a;->g:Z

    if-eqz v10, :cond_b6

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/duoku/platform/g/a;->l:Z

    if-eqz v10, :cond_b6

    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/duoku/platform/util/h;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 354
    add-long/2addr v8, v6

    .line 356
    :cond_b6
    :goto_b6
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ne v10, v14, :cond_186

    .line 373
    :goto_bc
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/duoku/platform/g/a;->d:Z

    if-eqz v2, :cond_1d8

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 376
    const-string v2, "cancel after read data from pipe"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/duoku/platform/g/a;->c(Ljava/lang/String;)V

    .line 453
    :cond_d1
    :goto_d1
    if-eqz v5, :cond_d7

    .line 455
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    move-object v5, v4

    .line 459
    :cond_d7
    if-eqz v3, :cond_2f9

    .line 461
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_dc} :catch_196
    .catchall {:try_start_8c .. :try_end_dc} :catchall_1d1

    .line 475
    :goto_dc
    if-eqz v5, :cond_de

    .line 480
    :cond_de
    if-eqz v4, :cond_e0

    .line 485
    :cond_e0
    :goto_e0
    return-void

    .line 269
    :catch_e1
    move-exception v2

    .line 272
    :try_start_e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->k:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v2, :cond_f4

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->k:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 275
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/duoku/platform/g/a;->k:Lorg/apache/http/client/methods/HttpGet;

    .line 278
    :cond_f4
    const-string v2, "receive data length not equals specify length"

    const/16 v3, 0x3e9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 475
    if-eqz v4, :cond_107

    .line 480
    :cond_107
    if-eqz v4, :cond_e0

    goto :goto_e0

    .line 298
    :cond_10a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/duoku/platform/g/a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/duoku/platform/g/c;->b(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v3

    .line 300
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/duoku/platform/g/a;->a(Z)V

    .line 301
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/duoku/platform/g/a;->h:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 303
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/duoku/platform/g/a;->d:Z

    if-eqz v5, :cond_140

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 306
    const-string v2, "cancel before write data to pipe"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/duoku/platform/g/a;->c(Ljava/lang/String;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_13b} :catch_2ef
    .catchall {:try_start_e2 .. :try_end_13b} :catchall_2e2

    .line 475
    if-eqz v4, :cond_13d

    .line 480
    :cond_13d
    if-eqz v4, :cond_e0

    goto :goto_e0

    .line 311
    :cond_140
    :try_start_140
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/duoku/platform/g/a;->a:Lcom/duoku/platform/util/k;

    const-string v6, "\u53d1\u8d77\u8bf7\u6c42"

    invoke-virtual {v5, v6}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 312
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 313
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/duoku/platform/g/a;->a:Lcom/duoku/platform/util/k;

    const-string v6, "\u5f97\u5230\u54cd\u5e94"

    invoke-virtual {v5, v6}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_156} :catch_158
    .catchall {:try_start_140 .. :try_end_156} :catchall_2e2

    goto/16 :goto_64

    .line 315
    :catch_158
    move-exception v2

    .line 317
    :try_start_159
    invoke-static {}, Lcom/duoku/platform/g/c;->a()Lorg/apache/http/client/HttpClient;
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15c} :catch_2ef
    .catchall {:try_start_159 .. :try_end_15c} :catchall_2e2

    move-result-object v2

    .line 320
    :try_start_15d
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_160} :catch_163
    .catchall {:try_start_15d .. :try_end_160} :catchall_2e2

    move-result-object v2

    goto/16 :goto_64

    .line 322
    :catch_163
    move-exception v2

    .line 324
    :try_start_164
    invoke-static {}, Lcom/duoku/platform/g/c;->a()Lorg/apache/http/client/HttpClient;
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_167} :catch_2ef
    .catchall {:try_start_164 .. :try_end_167} :catchall_2e2

    move-result-object v2

    .line 327
    :try_start_168
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_16b} :catch_16e
    .catchall {:try_start_168 .. :try_end_16b} :catchall_2e2

    move-result-object v2

    goto/16 :goto_64

    .line 329
    :catch_16e
    move-exception v2

    .line 333
    :try_start_16f
    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u72b6\u6001\u540e\u91cd\u8bd5\uff01"

    const/16 v3, 0x3e9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_180} :catch_2ef
    .catchall {:try_start_16f .. :try_end_180} :catchall_2e2

    .line 475
    if-eqz v4, :cond_182

    .line 480
    :cond_182
    if-eqz v4, :cond_e0

    goto/16 :goto_e0

    .line 358
    :cond_186
    :try_start_186
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/duoku/platform/g/a;->d:Z

    if-eqz v11, :cond_1be

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/g/a;->b:Ljava/util/concurrent/FutureTask;

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_194} :catch_196
    .catchall {:try_start_186 .. :try_end_194} :catchall_1d1

    goto/16 :goto_bc

    .line 466
    :catch_196
    move-exception v2

    move-object v4, v3

    move-object v3, v5

    .line 468
    :goto_199
    :try_start_199
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 470
    const-string v2, "exception happen"

    const/16 v5, 0x3e9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V
    :try_end_1b8
    .catchall {:try_start_199 .. :try_end_1b8} :catchall_2e9

    .line 475
    if-eqz v3, :cond_1ba

    .line 480
    :cond_1ba
    if-eqz v4, :cond_e0

    goto/16 :goto_e0

    .line 363
    :cond_1be
    int-to-long v12, v10

    add-long/2addr v6, v12

    .line 367
    :try_start_1c0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/duoku/platform/g/a;->g:Z

    if-eqz v11, :cond_1cb

    .line 369
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/duoku/platform/g/a;->a(JJ)V

    .line 371
    :cond_1cb
    const/4 v11, 0x0

    invoke-virtual {v3, v2, v11, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1cf} :catch_196
    .catchall {:try_start_1c0 .. :try_end_1cf} :catchall_1d1

    goto/16 :goto_b6

    .line 473
    :catchall_1d1
    move-exception v2

    move-object v4, v5

    .line 475
    :goto_1d3
    if-eqz v4, :cond_1d5

    .line 480
    :cond_1d5
    if-eqz v3, :cond_1d7

    .line 484
    :cond_1d7
    throw v2

    .line 380
    :cond_1d8
    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-eqz v2, :cond_230

    .line 382
    cmp-long v2, v6, v8

    if-eqz v2, :cond_1ed

    .line 387
    :try_start_1e2
    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u72b6\u6001\u540e\u91cd\u8bd5\uff01"

    const/16 v6, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_d1

    .line 390
    :cond_1ed
    cmp-long v2, v6, v8

    if-nez v2, :cond_d1

    .line 393
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/duoku/platform/g/a;->g:Z

    if-nez v2, :cond_206

    .line 395
    move-object v0, v3

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 402
    :goto_1ff
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/duoku/platform/g/a;->a([B)V

    goto/16 :goto_d1

    .line 399
    :cond_206
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/duoku/platform/g/a;->e:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object v2, v4

    goto :goto_1ff

    .line 407
    :cond_230
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v2

    const-string v6, "response data length is -1"

    invoke-virtual {v2, v6}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 410
    const-string v2, "content len is error"

    const/16 v6, 0x3e9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_24a} :catch_196
    .catchall {:try_start_1e2 .. :try_end_24a} :catchall_1d1

    goto/16 :goto_d1

    .line 415
    :cond_24c
    const/16 v6, 0x12d

    if-eq v5, v6, :cond_254

    const/16 v6, 0x12e

    if-ne v5, v6, :cond_271

    .line 417
    :cond_254
    :try_start_254
    const-string v5, "location"

    invoke-interface {v2, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 418
    if-eqz v2, :cond_2df

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2df

    .line 420
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/duoku/platform/g/a;->b(Ljava/lang/String;)V

    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/duoku/platform/g/a;->c()V

    move-object v5, v4

    .line 423
    goto/16 :goto_d1

    .line 426
    :cond_271
    const/16 v6, 0x1f8

    if-ne v5, v6, :cond_281

    .line 428
    const-string v2, "connect time out"

    const/16 v5, 0x1f8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V

    move-object v5, v4

    .line 429
    goto/16 :goto_d1

    .line 430
    :cond_281
    if-ne v5, v14, :cond_294

    move-object/from16 v0, p0

    iget v6, v0, Lcom/duoku/platform/g/a;->m:I

    if-nez v6, :cond_294

    .line 432
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/duoku/platform/g/a;->m:I

    .line 433
    invoke-direct/range {p0 .. p0}, Lcom/duoku/platform/g/a;->c()V

    move-object v5, v4

    .line 434
    goto/16 :goto_d1

    .line 437
    :cond_294
    const-string v6, "Net Error Code: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 438
    const-string v6, "Net Error Msg: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 445
    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u72b6\u6001\u540e\u91cd\u8bd5\uff01"

    const/16 v5, 0x3e9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;I)V
    :try_end_2df
    .catch Ljava/lang/Exception; {:try_start_254 .. :try_end_2df} :catch_2f3
    .catchall {:try_start_254 .. :try_end_2df} :catchall_2e6

    :cond_2df
    move-object v5, v4

    goto/16 :goto_d1

    .line 473
    :catchall_2e2
    move-exception v2

    move-object v3, v4

    goto/16 :goto_1d3

    :catchall_2e6
    move-exception v2

    goto/16 :goto_1d3

    :catchall_2e9
    move-exception v2

    move-object v15, v3

    move-object v3, v4

    move-object v4, v15

    goto/16 :goto_1d3

    .line 466
    :catch_2ef
    move-exception v2

    move-object v3, v4

    goto/16 :goto_199

    :catch_2f3
    move-exception v2

    move-object v15, v4

    move-object v4, v3

    move-object v3, v15

    goto/16 :goto_199

    :cond_2f9
    move-object v4, v3

    goto/16 :goto_dc
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 614
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 616
    new-instance v0, Lcom/duoku/platform/g/h;

    invoke-direct {v0}, Lcom/duoku/platform/g/h;-><init>()V

    .line 617
    sget-object v1, Lcom/duoku/platform/g/h$a;->f:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->a(Lcom/duoku/platform/g/h$a;)V

    .line 618
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/h;->b(I)V

    .line 621
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 622
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 624
    invoke-virtual {p0, v1}, Lcom/duoku/platform/g/a;->a(Landroid/os/Message;)V

    .line 625
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/duoku/platform/g/a;->j:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 93
    iput p1, p0, Lcom/duoku/platform/g/a;->j:I

    .line 94
    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/duoku/platform/g/a;->i:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/duoku/platform/g/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 199
    if-nez p1, :cond_15

    .line 201
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 202
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 204
    iget-object v1, p0, Lcom/duoku/platform/g/a;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    :cond_14
    :goto_14
    return-void

    .line 208
    :cond_15
    iget-object v0, p0, Lcom/duoku/platform/g/a;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/duoku/platform/g/a;->h:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/duoku/platform/g/a;->g:Z

    .line 181
    return-void
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 160
    iput p1, p0, Lcom/duoku/platform/g/a;->f:I

    .line 161
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/duoku/platform/g/a;->c:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public run()V
    .registers 1

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/duoku/platform/g/a;->c()V

    .line 632
    return-void
.end method
