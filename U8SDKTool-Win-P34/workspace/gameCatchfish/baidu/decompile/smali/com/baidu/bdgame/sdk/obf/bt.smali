.class final Lcom/baidu/bdgame/sdk/obf/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:I = 0x5

.field private static final c:Ljava/lang/String; = "com.baidu.plaformsdk"

.field private static final d:Ljava/lang/String; = "bdp_bd"

.field private static final e:Ljava/lang/String; = "bdp_91"

.field private static final f:Ljava/lang/String; = "bdp_dk"


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/r;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/r;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 308
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_24

    .line 310
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Ljava/util/List;)V

    .line 311
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 312
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/r;

    .line 313
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->e()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 375
    :cond_1d
    :goto_1d
    return-object v0

    .line 311
    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_22
    move-object v0, v3

    .line 317
    goto :goto_1d

    .line 320
    :cond_24
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/bt;->b(Ljava/util/List;)V

    .line 322
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/r;

    .line 323
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->g()J

    move-result-wide v4

    move v2, v1

    .line 326
    :goto_32
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_d5

    .line 327
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bdgame/sdk/obf/r;

    .line 329
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/r;->a(Lcom/baidu/bdgame/sdk/obf/r;)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 330
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->g()J

    move-result-wide v6

    .line 331
    cmp-long v2, v4, v6

    if-ltz v2, :cond_91

    .line 336
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 338
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/r;->b(Ljava/lang/String;)V

    .line 341
    :cond_67
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d3

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d3

    .line 343
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->c()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/baidu/bdgame/sdk/obf/r;->a(Ljava/lang/String;J)V

    move-object v1, v0

    .line 366
    :cond_87
    :goto_87
    if-nez v1, :cond_d1

    .line 371
    :goto_89
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->e()Z

    move-result v1

    if-nez v1, :cond_1d

    move-object v0, v3

    .line 375
    goto :goto_1d

    .line 351
    :cond_91
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ac

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 353
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/r;->b(Ljava/lang/String;)V

    .line 356
    :cond_ac
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_87

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 358
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->c()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/baidu/bdgame/sdk/obf/r;->a(Ljava/lang/String;J)V

    goto :goto_87

    .line 326
    :cond_cc
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_32

    :cond_d1
    move-object v0, v1

    goto :goto_89

    :cond_d3
    move-object v1, v0

    goto :goto_87

    :cond_d5
    move-object v1, v3

    goto :goto_87
.end method

.method private static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.baidu.plaformsdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/io/FileOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Ljava/io/FileOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 744
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    .line 745
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/r;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/r;->b(Lcom/baidu/bdgame/sdk/obf/r;)Lorg/json/JSONObject;

    move-result-object v0

    .line 746
    if-eqz v0, :cond_1c

    .line 747
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 744
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 751
    :cond_20
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kj;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 752
    if-eqz v0, :cond_2d

    .line 753
    invoke-virtual {p3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 755
    :cond_2d
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    .line 756
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bt$1;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/bt$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 288
    return-void
.end method

.method private a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/r;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 567
    .line 569
    const-wide v2, 0x7fffffffffffffffL

    .line 571
    const/4 v0, 0x0

    move v1, v0

    move v4, v5

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8b

    .line 572
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/r;

    .line 574
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/r;->a(Lcom/baidu/bdgame/sdk/obf/r;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 586
    :goto_1b
    if-eq v1, v5, :cond_73

    .line 588
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/r;

    .line 589
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/r;->k()Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->k()Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 596
    invoke-virtual {p2, v2}, Lcom/baidu/bdgame/sdk/obf/r;->b(Ljava/lang/String;)V

    .line 602
    :cond_3d
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v1

    if-nez v1, :cond_64

    .line 603
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->b()Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/r;->c()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_64

    .line 606
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 607
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->c()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/r;->a(Ljava/lang/String;J)V

    .line 625
    :cond_64
    :goto_64
    return-void

    .line 579
    :cond_65
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->g()J

    move-result-wide v6

    .line 580
    cmp-long v0, v6, v2

    if-gez v0, :cond_6f

    move-wide v2, v6

    move v4, v1

    .line 571
    :cond_6f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 612
    :cond_73
    if-eq v4, v5, :cond_87

    .line 613
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_83

    .line 615
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 616
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 619
    :cond_83
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 623
    :cond_87
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_8b
    move v1, v5

    goto :goto_1b
.end method

.method private a(Ljava/util/List;Ljava/io/FileInputStream;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Ljava/io/FileInputStream;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 720
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 722
    const/16 v2, 0x80

    new-array v2, v2, [B

    .line 723
    :goto_a
    invoke-virtual {p2, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    .line 724
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 726
    :cond_15
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 728
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kj;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 740
    :cond_26
    return-void

    .line 733
    :cond_27
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v0

    .line 734
    :goto_2d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 735
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/r;->a(Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    .line 736
    if-eqz v0, :cond_42

    .line 737
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 251
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 252
    const/4 v0, 0x1

    .line 254
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static a(Lcom/baidu/bdgame/sdk/obf/r;Lcom/baidu/bdgame/sdk/obf/ai;)Z
    .registers 4

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/r;->k()Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ai;->m()Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 546
    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/ai;->h(Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x1

    .line 550
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/s;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_8
    if-ltz v2, :cond_23

    .line 93
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/r;

    .line 94
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/s;->a(Lcom/baidu/bdgame/sdk/obf/s;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 95
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    .line 92
    :goto_1e
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_8

    .line 99
    :cond_23
    return v1

    :cond_24
    move v0, v1

    goto :goto_1e
.end method

.method private a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/s;J)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            "J)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 628
    move v1, v2

    .line 629
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 630
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/r;

    .line 631
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/baidu/bdgame/sdk/obf/s;->a(Lcom/baidu/bdgame/sdk/obf/s;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 633
    invoke-virtual {v0, p3, p4}, Lcom/baidu/bdgame/sdk/obf/r;->a(J)V

    .line 634
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/s;->b(Ljava/lang/String;)V

    .line 636
    const/4 v2, 0x1

    .line 640
    :cond_25
    return v2

    .line 629
    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_8
    if-ltz v2, :cond_2d

    .line 137
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/r;

    .line 138
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 139
    :cond_24
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    .line 136
    :goto_28
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_8

    .line 143
    :cond_2d
    return v1

    :cond_2e
    move v0, v1

    goto :goto_28
.end method

.method private b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 404
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 405
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Ljava/util/List;)V

    move v2, v3

    .line 407
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_20

    .line 408
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/r;

    .line 409
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->d()Z

    move-result v1

    if-nez v1, :cond_21

    .line 454
    :cond_20
    return-object v5

    .line 418
    :cond_21
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->h()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 407
    :cond_27
    :goto_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    .line 423
    :cond_2b
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->g()J

    move-result-wide v6

    move v4, v3

    .line 427
    :goto_33
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_27

    .line 428
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bdgame/sdk/obf/r;

    .line 430
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/r;->a(Lcom/baidu/bdgame/sdk/obf/r;)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 431
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->g()J

    move-result-wide v8

    .line 432
    cmp-long v4, v6, v8

    if-gez v4, :cond_5f

    .line 434
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/bdgame/sdk/obf/r;->a(Lcom/baidu/bdgame/sdk/obf/s;)V

    .line 435
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->c()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lcom/baidu/bdgame/sdk/obf/r;->a(Ljava/lang/String;J)V

    .line 439
    :cond_5f
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 441
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/bdgame/sdk/obf/r;->b(Ljava/lang/String;)V

    .line 444
    :cond_7a
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 446
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->c()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lcom/baidu/bdgame/sdk/obf/r;->a(Ljava/lang/String;J)V

    goto :goto_27

    .line 427
    :cond_9a
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_33
.end method

.method private static b(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bt$2;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/bt$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 305
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/bt;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 259
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 260
    const/4 v0, 0x1

    .line 262
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static b(Lcom/baidu/bdgame/sdk/obf/r;Lcom/baidu/bdgame/sdk/obf/ai;)Z
    .registers 4

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/r;->b()Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 557
    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/ai;->a(Ljava/lang/String;)V

    .line 558
    const/4 v0, 0x1

    .line 561
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 677
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 678
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Ljava/util/List;Ljava/io/FileInputStream;Z)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8} :catch_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_13

    .line 687
    :goto_8
    return-void

    .line 680
    :catch_9
    move-exception v0

    .line 681
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 682
    :catch_e
    move-exception v0

    .line 683
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    .line 684
    :catch_13
    move-exception v0

    .line 685
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 679
    :catch_18
    move-exception v0

    goto :goto_8
.end method

.method private c(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bt$3;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/bt$3;-><init>(Lcom/baidu/bdgame/sdk/obf/bt;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 401
    return-void
.end method

.method private d(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 691
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 692
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;Ljava/util/List;Ljava/io/FileOutputStream;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_13

    .line 700
    :goto_8
    return-void

    .line 693
    :catch_9
    move-exception v0

    .line 694
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_8

    .line 695
    :catch_e
    move-exception v0

    .line 696
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 697
    :catch_13
    move-exception v0

    .line 698
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method private e(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 702
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lk;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 717
    :goto_6
    return-void

    .line 706
    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/bt;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 708
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 709
    invoke-direct {p0, p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;Ljava/util/List;Ljava/io/FileOutputStream;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_1f} :catch_20
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1f} :catch_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_2a

    goto :goto_6

    .line 710
    :catch_20
    move-exception v0

    .line 711
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_6

    .line 712
    :catch_25
    move-exception v0

    .line 713
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 714
    :catch_2a
    move-exception v0

    .line 715
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method private f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 763
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lk;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 779
    :goto_6
    return-void

    .line 767
    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/bt;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 769
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 770
    const/4 v0, 0x0

    invoke-direct {p0, p2, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Ljava/util/List;Ljava/io/FileInputStream;Z)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_20} :catch_21
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_20} :catch_23
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_20} :catch_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_2d

    goto :goto_6

    .line 771
    :catch_21
    move-exception v0

    goto :goto_6

    .line 772
    :catch_23
    move-exception v0

    .line 773
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 774
    :catch_28
    move-exception v0

    .line 775
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 776
    :catch_2d
    move-exception v0

    .line 777
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method


# virtual methods
.method a(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 48
    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/bt;->a:I

    .line 49
    return-void
.end method

.method declared-synchronized a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 8

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    const/4 v0, 0x0

    .line 113
    if-nez p2, :cond_32

    .line 114
    const-string v0, "bdp_bd"

    .line 121
    :cond_12
    :goto_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 122
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 124
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->d(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 127
    :cond_24
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, v2, p3}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 129
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->e(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_3e

    .line 132
    :cond_30
    monitor-exit p0

    return-void

    .line 115
    :cond_32
    const/4 v3, 0x2

    if-ne p2, v3, :cond_38

    .line 116
    :try_start_35
    const-string v0, "bdp_91"

    goto :goto_12

    .line 117
    :cond_38
    const/4 v3, 0x1

    if-ne p2, v3, :cond_12

    .line 118
    const-string v0, "bdp_dk"
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3e

    goto :goto_12

    .line 108
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 8

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v3

    .line 69
    if-nez v3, :cond_36

    .line 70
    const-string v0, "bdp_bd"

    .line 77
    :cond_16
    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 78
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, v1, p2}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/s;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 80
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->d(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 83
    :cond_28
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, v2, p2}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/s;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 85
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->e(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_42

    .line 88
    :cond_34
    monitor-exit p0

    return-void

    .line 71
    :cond_36
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3c

    .line 72
    :try_start_39
    const-string v0, "bdp_91"

    goto :goto_16

    .line 73
    :cond_3c
    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    .line 74
    const-string v0, "bdp_dk"
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_42

    goto :goto_16

    .line 64
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;J)V
    .registers 10

    .prologue
    .line 650
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 651
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 653
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v3

    .line 654
    const/4 v0, 0x0

    .line 655
    if-nez v3, :cond_36

    .line 656
    const-string v0, "bdp_bd"

    .line 662
    :cond_16
    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 663
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 664
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/s;J)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 665
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->d(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 668
    :cond_28
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 669
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/s;J)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 670
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->e(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_42

    .line 673
    :cond_34
    monitor-exit p0

    return-void

    .line 657
    :cond_36
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3c

    .line 658
    :try_start_39
    const-string v0, "bdp_91"

    goto :goto_16

    .line 659
    :cond_3c
    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    .line 660
    const-string v0, "bdp_dk"
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_42

    goto :goto_16

    .line 650
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 53
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/lg;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;J)Z
    .registers 14

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 490
    monitor-enter p0

    :try_start_3
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ai;->l()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_62

    move-result v2

    if-eqz v2, :cond_b

    .line 538
    :cond_9
    :goto_9
    monitor-exit p0

    return v0

    .line 495
    :cond_b
    :try_start_b
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v3

    .line 496
    new-instance v4, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 497
    new-instance v5, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 498
    invoke-static {p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/r;->a(Lcom/baidu/bdgame/sdk/obf/ai;J)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v6

    .line 500
    const/4 v2, 0x0

    .line 501
    if-nez v3, :cond_57

    .line 502
    const-string v2, "bdp_bd"

    .line 509
    :cond_28
    :goto_28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 510
    invoke-direct {p0, p1, v4, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 511
    invoke-direct {p0, v4, v6}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/r;)V

    .line 512
    invoke-direct {p0, p1, v4, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->d(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 515
    invoke-static {v6, p2}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Lcom/baidu/bdgame/sdk/obf/r;Lcom/baidu/bdgame/sdk/obf/ai;)Z

    move-result v0

    .line 517
    invoke-static {v6, p2}, Lcom/baidu/bdgame/sdk/obf/bt;->b(Lcom/baidu/bdgame/sdk/obf/r;Lcom/baidu/bdgame/sdk/obf/ai;)Z

    .line 519
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ai;->k()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 521
    invoke-direct {p0, p1, v5, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 522
    invoke-direct {p0, v5, v6}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/r;)V

    .line 523
    invoke-direct {p0, p1, v5, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->e(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 526
    if-nez v0, :cond_52

    .line 527
    invoke-static {v6, p2}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Lcom/baidu/bdgame/sdk/obf/r;Lcom/baidu/bdgame/sdk/obf/ai;)Z

    .line 530
    :cond_52
    invoke-static {v6, p2}, Lcom/baidu/bdgame/sdk/obf/bt;->b(Lcom/baidu/bdgame/sdk/obf/r;Lcom/baidu/bdgame/sdk/obf/ai;)Z

    :cond_55
    move v0, v1

    .line 535
    goto :goto_9

    .line 503
    :cond_57
    const/4 v7, 0x2

    if-ne v3, v7, :cond_5d

    .line 504
    const-string v2, "bdp_91"

    goto :goto_28

    .line 505
    :cond_5d
    if-ne v3, v1, :cond_28

    .line 506
    const-string v2, "bdp_dk"
    :try_end_61
    .catchall {:try_start_b .. :try_end_61} :catchall_62

    goto :goto_28

    .line 490
    :catchall_62
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/r;
    .registers 6

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_59

    move-result v0

    if-nez v0, :cond_a

    .line 153
    const/4 v0, 0x0

    .line 181
    :goto_8
    monitor-exit p0

    return-object v0

    .line 156
    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/bt;->a:I

    if-nez v2, :cond_3f

    .line 160
    const-string v2, "bdp_bd"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 161
    const-string v2, "bdp_91"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 162
    const-string v2, "bdp_dk"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 164
    const-string v2, "bdp_bd"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 165
    const-string v2, "bdp_91"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 166
    const-string v2, "bdp_dk"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 181
    :cond_3a
    :goto_3a
    invoke-direct {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Ljava/util/List;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    goto :goto_8

    .line 167
    :cond_3f
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/bt;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5c

    .line 168
    const-string v2, "bdp_bd"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 169
    const-string v2, "bdp_91"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 171
    const-string v2, "bdp_bd"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 172
    const-string v2, "bdp_91"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_a .. :try_end_58} :catchall_59

    goto :goto_3a

    .line 152
    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0

    .line 173
    :cond_5c
    :try_start_5c
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/bt;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    .line 174
    const-string v2, "bdp_bd"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 175
    const-string v2, "bdp_dk"

    invoke-direct {p0, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 177
    const-string v2, "bdp_bd"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 178
    const-string v2, "bdp_dk"

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5c .. :try_end_75} :catchall_59

    goto :goto_3a
.end method

.method declared-synchronized b(Landroid/content/Context;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 206
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    iget v3, p0, Lcom/baidu/bdgame/sdk/obf/bt;->a:I

    if-nez v3, :cond_50

    .line 210
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_32

    const-string v3, "bdp_bd"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "bdp_91"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "bdp_dk"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_ab

    move-result v1

    if-eqz v1, :cond_32

    .line 246
    :cond_30
    :goto_30
    monitor-exit p0

    return v0

    .line 216
    :cond_32
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_4e

    :try_start_36
    const-string v1, "bdp_bd"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bt;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "bdp_91"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bt;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "bdp_dk"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bt;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 246
    :cond_4e
    const/4 v0, 0x0

    goto :goto_30

    .line 222
    :cond_50
    iget v3, p0, Lcom/baidu/bdgame/sdk/obf/bt;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7e

    .line 223
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_69

    const-string v3, "bdp_bd"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "bdp_91"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 228
    :cond_69
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_4e

    const-string v1, "bdp_bd"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bt;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "bdp_91"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bt;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_30

    .line 233
    :cond_7e
    iget v3, p0, Lcom/baidu/bdgame/sdk/obf/bt;->a:I

    if-ne v3, v0, :cond_4e

    .line 234
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_96

    const-string v3, "bdp_bd"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "bdp_dk"

    invoke-direct {p0, p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 239
    :cond_96
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_4e

    const-string v1, "bdp_bd"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bt;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "bdp_dk"

    invoke-direct {p0, p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bt;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z
    :try_end_a7
    .catchall {:try_start_36 .. :try_end_a7} :catchall_ab

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_30

    .line 206
    :catchall_ab
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/r;
    .registers 6

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xf

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    const-string v0, "bdp_bd"

    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 193
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/r;

    .line 194
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->e()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->h()Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2f

    move-result v3

    if-eqz v3, :cond_29

    .line 198
    :goto_27
    monitor-exit p0

    return-object v0

    .line 192
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 198
    :cond_2d
    const/4 v0, 0x0

    goto :goto_27

    .line 190
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Landroid/content/Context;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 465
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 467
    const/4 v0, 0x0

    .line 468
    if-nez p2, :cond_24

    .line 469
    const-string v0, "bdp_bd"

    .line 475
    :cond_12
    :goto_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 476
    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 477
    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bt;->f(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 480
    :cond_1e
    invoke-direct {p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bt;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_30

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 470
    :cond_24
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2a

    .line 471
    :try_start_27
    const-string v0, "bdp_91"

    goto :goto_12

    .line 472
    :cond_2a
    const/4 v3, 0x1

    if-ne p2, v3, :cond_12

    .line 473
    const-string v0, "bdp_dk"
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_30

    goto :goto_12

    .line 464
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method
